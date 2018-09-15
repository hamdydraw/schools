<?php

namespace App\Http\Controllers;

use App;
use App\Academic;
use App\Course;
use App\User;
use Auth;
use DB;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;

class StudentAttendanceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Load the Classes information for the current logged in user (i.e staff)
     * @return Illuminate\Database\Eloquent\Collection
     */
    public function index($slug)
    {
        $userData = App\User::where('slug', '=', $slug)->first();
        $user = getUserRecord();
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role != 'educational_supervisor') {
            if (!checkRole(getUserGrade(3))) {
                prepareBlockUserMessage();
                return back();
            }
        }
        if ($role != 'educational_supervisor') {
            if (!isEligible($slug)) {
                return back();
            }
        }
        if ($role == 'owner' || $role == 'admin') {
          $teachers = $this->getTeachers();
          $data['teachers'] = $teachers;
        }



        //Prepare the select list in the below format
        // Parent Course Code - Year-Sem - Subject-title

        if (getRoleData(Auth::user()->role_id) == 'educational_supervisor')
        {
            $data['active_class'] = 'teacher-student-attendance';
        } elseif (getRoleData(Auth::user()->role_id) == 'admin' || getRoleData(Auth::user()->role_id) == 'owner') {
          $data['active_class'] = 'attendance';
        } else {
            $data['active_class'] = 'academic';
        }
        $data['title'] = getPhrase('attendance');


        $list = App\Course::getCourses(0);

        $data['role_name'] = getRoleData($user->role_id);
        $data['userdata'] = $user;
        $data['slugData']=$userData;

        $data['layout'] = getLayout();
        return view('attendance.select-particulars', $data);
    }

    /**
     * This method returns the datatables data to view
     * @return [type] [description]
     */
    public function getDatatable()
    {
        $records = Course::select([
            'parent_id',
            'course_title',
            'course_code',
            'course_dueration',
            'grade_system',
            'is_having_semister',
            'is_having_elective_subjects',
            'slug',
            'id',
            'created_by_user','updated_by_user','created_by_ip','updated_by_ip','created_at','updated_at'
        ])->orderBy('updated_at', 'desc');

        return Datatables::of($records)
            ->addColumn('action', function ($records) {

                $records->created_by_user_name = App\User::get_user_name($records->created_by_user);
                $records->updated_by_user_name = App\User::get_user_name($records->updated_by_user);
                $view = "<li><a onclick='pop_it($records)'><i class=\"fa fa-eye\"></i>".getPhrase('view_record_history')."</a></li>";

                $editSemister = '';
                if ($records->parent_id) {
                    if ($records->is_having_semister) {
                        $editSemister = '<li><a href="/mastersettings/course/editSemisters/' . $records->slug . '"><i class="icon-packages"></i>' . getPhrase("edit_semisters") . '</a></li>';
                    }
                }


                return '<div class="dropdown more">
                        <a id="dLabel" type="button" class="more-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li><a href="/mastersettings/course/edit/' . $records->slug . '"><i class="icon-packages"></i>' . getPhrase("edit") . '</a></li>
                            ' . $editSemister . '
                            '.$view.'
                            <li><a href="javascript:void(0);" onclick="deleteRecord(\'' . $records->slug . '\');"><i class="icon-packages"></i>' . getPhrase("delete") . '</a></li>
                        </ul>
                    </div>';
            })
            ->removeColumn('id')
            ->removeColumn('slug')
            ->removeColumn('created_by_user')
            ->removeColumn('updated_by_user')
            ->removeColumn('created_by_ip')
            ->removeColumn('updated_by_ip')
            ->removeColumn('created_at')
            ->removeColumn('updated_at')
            ->editColumn('parent_id', function ($records) {
                return ($records->parent_id == 0) ? getPhrase('parent') :
                    Course::getCourseRecord($records->parent_id)->course_title;
            })
            ->editColumn('course_dueration', function ($records) {
                return

                    ($records->parent_id) ? $records->course_dueration . ' ' . getPhrase('years') : '-';
            })
            ->editColumn('is_having_semister', function ($records) {
                return ($records->parent_id) ? ($records->is_having_semister) ? getPhrase('yes') : getPhrase('no') :
                    '-';
            })
            ->editColumn('is_having_elective_subjects', function ($records) {
                return ($records->parent_id) ? ($records->is_having_elective_subjects) ? getPhrase('yes') : getPhrase('no') : '-';
            })
            ->make();
    }

    /**
     * This method loads the create view
     * @return void
     */
    public function create(Request $request, $slug)
    {
        $userData = App\User::where('slug', '=', $slug)->first();
        if(isset($request->teacherSlug)) {
          $userData = App\User::where('slug', '=', $request->teacherSlug)->first();
        }
        $data['slugData']=$userData;
        $user = getUserRecord($userData->id);
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role != 'educational_supervisor') {
            if (!checkRole(getUserGrade(3))) {

                prepareBlockUserMessage();
                return back();
            }
        }
        if ($request->course_subject_id == '' || $request->total_class == '' || $request->attendance_date == '') {

            flash(getPhrase('Ooops'), getPhrase('Please_Select_The_Details'), 'overlay');
            return redirect()->back()->withInput($request->except('_token'));

        }

        $course_subject_record = App\CourseSubject::where('id', '=', $request->course_subject_id)->first();
        $academic_title = Academic::where('id', '=', $course_subject_record->academic_id)->get()->first();
        if (!$course_subject_record) {
            flash(getPhrase('Ooops'), getPhrase('Invalid_details_supplied'), 'overlay');
            return redirect()->back()->withInput($request->except('_token'));
        }


        $this->validate($request, [
            'attendance_date' => 'bail|required|max:20',
        ]);


        /**
         * Find wether the attendance is already added for the day or not
         * @var [type]
         */
        $att_records = $this->isAttendanceAlreadyTaken($course_subject_record, $userData->slug, $request);
        $data['attendance_taken'] = false;
        if (count($att_records)) {
            $data['attendance_taken'] = true;
        }

        $data['attendance_records'] = $att_records;

        $current_year = $course_subject_record->year;
        $current_semister = $course_subject_record->semister;


        $data['record'] = false;
        if ($role == 'educational_supervisor'){
            $data['active_class'] = 'teacher-student-attendance';
        } elseif (getRoleData(Auth::user()->role_id) == 'admin' || getRoleData(Auth::user()->role_id) == 'owner') {
            $data['active_class'] = 'attendance';
        }else {
            $data['active_class'] = 'academic';
        }
        $course_record = App\Course::where('id', '=', $course_subject_record->course_id)->first();

        $submitted_data = array(
            'attendance_date' => $request->attendance_date,
            'current_year' => $current_year,
            'current_semister' => $current_semister,
            'course_record' => $course_record,
            'subject_id' => $course_subject_record->subject_id,
            'total_class' => $request->total_class,
            'updated_by' => $user->id,
            'academic_id' => $course_subject_record->academic_id,
            'academic_title' => $academic_title
        );

        $studentObject = new App\Student();
        $students = $studentObject->getStudents(
            $course_subject_record->academic_id,
            $course_subject_record->course_parent_id
        /*$current_year,
        $current_semister*/
        );

        $data['submitted_data'] = (object)$submitted_data;

        $data['students'] = $students;
        $data['title'] = getPhrase('attendance');
        $data['layout'] = getLayout();
        $data['role_name'] = getRoleData($user->role_id);
        $data['userdata'] = $user;

        if (count($students)) {
            return view('attendance.list', $data);
        } else {
            flash(getPhrase('Ooops'), getPhrase('no_students_available'), 'overlay');
        }
        return redirect('student/attendance/' . $user->slug);
    }

    public function isAttendanceAlreadyTaken($course_subject_record, $slug, $request, $delete = false)
    {

        $user = App\User::where('slug', '=', $slug)->first();

        $year = $course_subject_record->year;
        $semister = $course_subject_record->semister;
        $data = App\StudentAttendance::
        where('academic_id', '=', $course_subject_record->academic_id)
            ->where('course_id', '=', $course_subject_record->course_id)
            ->where('year', '=', $year)
            ->where('semester', '=', $semister)
            ->where('subject_id', '=', $course_subject_record->subject_id)
            ->where('total_class', '=', $request->total_class)
            // ->where('record_updated_by', '=', $user->id)
            ->where('attendance_date', '=', $request->attendance_date)
            ->where('record_status', '=', 1);
        if (!$delete) {
            return $data->get();
        }

        return $data->delete();

    }

    /**
     * Update attendance may do create new set of attendance
     * If attendance is already taken for the specific combination
     * delete all records for that combination and re-insert the new set of records
     * @param  Request $request [Request Object]
     * @param  [type]  $slug    [Unique Slug]
     * @return void
     */
    public function updateAtt(Request $request, $slug)
    {

        $user = App\User::where('slug', '=', $slug)->first();
        /**
         * 1) Check if any record exists with the combination
         * 2) If exists Delete the records with same combination
         * 3) If not exists, continue the flow as it is
         */

        $course_subject_record = App\CourseSubject::where('academic_id', '=', $request->academic_id)
            ->where('course_id', '=', $request->course_id)
            ->where('subject_id', '=', $request->subject_id)
            ->where('staff_id', '=', $user->id)
            ->first();

        if (count($this->isAttendanceAlreadyTaken($course_subject_record, $slug, $request))) {
            //Data exists, remove all data
            $this->isAttendanceAlreadyTaken($course_subject_record, $slug, $request, true);
        }


        $attendance = new App\StudentAttendance();
        $academic_id = $request->academic_id;
        $course_id = $request->course_id;
        $current_year = $request->current_year;
        $current_semister = $request->current_semister;
        $attendance_date = $request->attendance_date;
        $attendance_code_records = $request->attendance_code;
        $activities = $request->activities;
        $notes = $request->notes;
        $healthStatus = $request->health_status;
        $subject_id = $request->subject_id;
        $total_class = $request->total_class;
        $updated_by = $request->record_updated_by;
        $user_id = Auth::User()->id;


        foreach ($attendance_code_records as $key => $value) {

            $attendance = new App\StudentAttendance();

            $attendance->academic_id = $academic_id;
            $attendance->course_id = $course_id;
            $attendance->year = $current_year;
            $attendance->semester = $current_semister;
            $attendance->attendance_date = $attendance_date;
            $attendance->subject_id = $subject_id;
            $attendance->total_class = $total_class;
            $attendance->record_updated_by = $updated_by;
            $attendance->student_id = $key;
            $attendance->attendance_code = $value;
            $attendance->activities = $activities[$key];
            $attendance->notes = $notes[$key];
            $attendance->health_status = $healthStatus[$key];
            $attendance->record_updated_by = $user_id;
            $attendance->user_stamp($request);
            $attendance->save();

        }


        flash(getPhrase('success'), getPhrase('record_updated_successfully'), 'success');
        return redirect('student/attendance/' . $user->slug);
    }

    /**
     * This method adds record to DB
     * @param  Request $request [Request Object]
     * @return void
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'academic_id' => 'bail|required|max:20',
            'course_id' => 'bail|required',
            'current_year' => 'bail|required|integer',
            'current_semister' => 'bail|required|integer',
            'attendance_date' => 'bail|required',
        ]);
        $record = new Course();
        $name = $request->course_title;
        $record->course_title = $name;
        $record->slug = $record->makeSlug($name);
        $record->course_code = $request->course_code;
        $record->parent_id = $request->parent_id;
        $record->course_dueration = $request->course_dueration;
        $record->grade_system = $request->grade_system;
        $record->is_having_semister = $request->is_having_semister;
        $record->is_having_elective_subjects = $request->is_having_elective_subjects;
        $record->description = $request->description;
        $record->user_stamp($request);
        $record->save();

        if ($record->is_having_semister) {
            $this->createSemisters($record);
        }

        flash(getPhrase('success'), getPhrase('record_added_successfully'), 'success');
        return redirect('mastersettings/course');
    }

    public function getTeachers()
    {

            $records = User::join('roles', 'users.role_id', '=', 'roles.id')
                ->join('staff', 'staff.user_id', '=', 'users.id')
                ->join('courses', 'courses.id', '=', 'staff.course_parent_id')
                ->where('roles.id', '=', 3)
                ->where('users.status', '!=', 0)
                ->select([
                    'users.name',
                    'image',
                    'id_number',
                    'staff.staff_id',
                    'staff.job_title',
                    'courses.course_title',
                    'email',
                    'roles.name as role_name',
                    'login_enabled',
                    'role_id',
                    'users.slug as slug',
                    'users.created_by_user','users.updated_by_user','users.created_by_ip','users.updated_by_ip','users.created_at','users.updated_at',
                    'users.status',
                    'staff.user_id'
                ])
                ->orderBy('users.updated_at', 'desc')->get();
                return $records;
    }
}
