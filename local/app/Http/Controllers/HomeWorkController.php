<?php

namespace App\Http\Controllers;

use App\HomeWork;
use App\Staff;
use App\Student;
use Illuminate\Http\Request;
use App\Course;
use App\Subject;
use Yajra\Datatables\Datatables;
use App\Academic;
use App\AcademicSemester;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;

class HomeWorkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (!checkRole(getUserGrade(3))) {
            prepareBlockUserMessage();
            return back();
        }
        $data['active_class'] = 'homeworks';
        $data['title'] = getPhrase('HomeWork');
        $user = getUserRecord();
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role == 'owner' || $role == 'admin') {
            $teachers = $this->getTeachers();
            $data['teachers'] = $teachers;
        }

        return view('home_work.list', $data);
    }

    public function showList($teacher,$course,$subjecti)
    {
        if (!checkRole(getUserGrade(3))) {
            prepareBlockUserMessage();
            return back();
        }

        $subject = Subject::getRecordWithSlug($subjecti);
        $coursee  = Course::where('slug',$course)->first();

        $data['active_class'] = 'homeworks';
        $data['title'] = $subject->subject_title . ' - ' . $coursee->course_title . ' - ' . getPhrase('HomeWorks');
        $data['subject'] = $subject;
        $data['course']  = $coursee;
        if($teacher == "null"){
            $teacher = Auth::user()->slug;
        }
        $data['teacher'] = $teacher;
        $data['module_helper'] = getModuleHelper('view-questions');

        return view('home_work.homework', $data);
    }

    public function getHomeworks($teacher,$course,$subject)
    {
        $subject_id = Subject::where('slug',$subject)->pluck('id')->first();
        $course_id  = Course::where('slug',$course)->pluck('id')->first();
        $teacher_id = User::where('slug',$teacher)->pluck('id')->first();
        $current_academic_id = new Academic();
        $semister = new AcademicSemester();
        $year=$current_academic_id->getCurrentAcademic()->id;
        $sem = $semister->getCurrentSemeterOfAcademicYear($year)->sem_num;
        $records    = HomeWork::select(['id','slug','title','subject_id','course_id','file','created_by_user','updated_by_user','created_by_ip','updated_by_ip','created_at'])
            ->where('subject_id',$subject_id)->where('course_id',$course_id)->where('staff_id',$teacher_id)->where('year',$year)->where('sem',$sem);
        return Datatables::of($records)
            ->addColumn('action', function ($records) {

                $records->created_by_user_name = User::get_user_name($records->created_by_user);
                $records->updated_by_user_name = User::get_user_name($records->updated_by_user);
                $view = "<li><a onclick='pop_it($records)'><i class=\"fa fa-eye\"></i>".getPhrase('view_record_history')."</a></li>";


                $link_data = '<div class="dropdown more">
                        <a id="dLabel" type="button" class="more-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li><a href="'.URL_HOMEWORK_EDIT.'/'.$records->slug.'"><i class="fa fa-pencil"></i>'.getPhrase("edit").'</a></li>'.$view;
                $temp = '';
                if(checkRole(getUserGrade(3))) {
                    $temp .= '<li><a href="javascript:void(0);" onclick="deleteRecord(\''.$records->slug.'\');"><i class="fa fa-trash"></i>'. getPhrase("delete").'</a></li>';
                }

                $temp .='</ul> </div>';
                $link_data .= $temp;
                return $link_data;
            })
            ->editColumn('subject_id', function ($records) {
                return Subject::where('id',$records->subject_id)->pluck('subject_title')->first();
            })
            ->editColumn('course_id', function ($records) {
                return Course::where('id',$records->course_id)->pluck('course_title')->first();
            })
            ->editColumn('file', function ($records) {
                return "<a href='".HOMEWORK_PATH.$records->file."' download>".$records->file."</a>";
            })
            ->removeColumn('slug')
            ->removeColumn('created_by_user')
            ->removeColumn('updated_by_user')
            ->removeColumn('created_by_ip')
            ->removeColumn('updated_by_ip')
            ->removeColumn('created_at')
            ->removeColumn('updated_at')

            ->make();
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if (!checkRole(getUserGrade(3))) {
            prepareBlockUserMessage();
            return back();
        }
        $data['active_class'] = 'homeworks';
        $data['title']        = getPhrase('add_homework');
        $user = getUserRecord();
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role == 'owner' || $role == 'admin') {
            $teachers = $this->getTeachers();
            $data['teachers'] = $teachers;
        }
        return view('home_work.add-edit', $data);

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

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (!checkRole(getUserGrade(3))) {
            prepareBlockUserMessage();
            return back();
        }
        $this->validate($request,[
            'title' => 'string|required',
            'course_id' => 'required',
            'course_subject_id' => 'required',
        ]);

        $current_academic_id = new Academic();
        $semister = new AcademicSemester();
        $year = $current_academic_id->getCurrentAcademic()->id;
        $sem  = $semister->getCurrentSemeterOfAcademicYear($year)->sem_num;

        $record = new HomeWork();
        $record->title = $request->title;
        $record->slug = $record->makeSlug( $record->title, true);
        if(is_teacher()){
            $record->staff_id = Auth::user()->id;
        }else{
            $staffId = User::where('slug', $request->teacherSlug)->first()->id;
            $record->staff_id = $staffId;

        }
        $record->course_id = $request->course_id;
        $record->subject_id = $request->course_subject_id;
        $record->explanation = $request->explanation;
        $record->year = $year;
        $record->sem = $sem;
        $record->file        = $request->question_file;
        $record->user_stamp($request);
        $record->save();
        flash(getPhrase('success'), getPhrase('record_added_successfully'), 'success');
        return redirect(URL_HOMEWORK_VIEW);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $record     = HomeWork::where('slug', $slug)->get()->first();
        return $record;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($slug)
    {
        if(!checkRole(getUserGrade(3)))
        {
            prepareBlockUserMessage();
            return back();
        }
        $data['record']     = HomeWork::where('slug', $slug)->get()->first();
        $data['edit'] = "set";
        if($data['record'] == null){
            prepareBlockUserMessage();
            return back();
        }
        $data['active_class'] = 'homeworks';
        $data['title']        = getPhrase('edit_homework');
        $user = getUserRecord();
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role == 'owner' || $role == 'admin') {
            $teachers = $this->getTeachers();
            $data['teachers'] = $teachers;
        }
        return view('home_work.add-edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $slug)
    {
        if(!checkRole(getUserGrade(3)))
        {
            prepareBlockUserMessage();
            return back();
        }
        $record                 = HomeWork::where('slug', $slug)->get()->first();

        $this->validate($request, [
            'title'          => 'bail|required|max:60|',
        ]);
        $record->title = $request->title;
        if($request->question_file != ''){
            $record->file        = $request->question_file;
        }
        $record->explanation = $request->explanation;
        $record->update_stamp($request);
        $record->save();
        flash(getPhrase('success'),getPhrase('record_updated_successfully'), 'success');
        return redirect(URL_HOMEWORK_VIEW);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($slug)
    {
        HomeWork::where('slug',$slug)->delete();
        $response['status'] = 1;
        $response['message'] = getPhrase('record_deleted_successfully');
        return json_encode($response);
    }

    public function StudentHW($student = null)
    {
        if (!checkRole(getUserGrade(13))) {
            prepareBlockUserMessage();
            return back();
        }
        if(Auth::user()->role_id == 5){
            $data['student_slug'] = Auth::user()->slug;
        }else{
            $data['student_slug'] = $student;
        }
        $data['active_class'] = 'homeworks';
        $data['title'] = getPhrase('HomeWorks');
        $data['module_helper'] = getModuleHelper('view-questions');
        return view('home_work.student_parent_view', $data);
    }

    public function StudentDatable($student)
    {
        $student_id = User::where('slug',$student)->pluck('id')->first();
        $course_id  = Student::where('user_id',$student_id)->pluck('course_parent_id')->first();
        $current_academic_id = new Academic();
        $semister = new AcademicSemester();
        $year=$current_academic_id->getCurrentAcademic()->id;
        $sem = $semister->getCurrentSemeterOfAcademicYear($year)->sem_num;

        $records    = HomeWork::select(['id','slug','title','subject_id','staff_id','file','created_at'])->where('course_id',$course_id)->where('year',$year)->where('sem',$sem);
        return Datatables::of($records)
            ->editColumn('subject_id', function ($records) {
                return Subject::where('id',$records->subject_id)->pluck('subject_title')->first();
            })
            ->editColumn('staff_id', function ($records) {
                return User::where('id',$records->staff_id)->pluck('name')->first();
            })
            ->editColumn('file', function ($records) {
                return "<a href='".HOMEWORK_PATH.$records->file."' download>".$records->file."</a>";
            })
            ->removeColumn('slug')
            ->make();
    }

    public function children()
    {

        $user = getUserWithSlug();

        if (!checkRole(getUserGrade(7))) {
            prepareBlockUserMessage();
            return back();
        }

        if (!isEligible($user->slug)) {
            return back();
        }

        $data['records'] = false;
        $data['user'] = $user;
        $data['title'] = getPhrase('children');
        $data['active_class'] = 'homeworks';
        $data['layout'] = getLayout();
        return view('home_work.list-children', $data);
    }

    /**
     * This method returns the datatables data to view
     * @return [type] [description]
     */

    public function getDatatable($slug)
    {
        $records = array();
        $user = getUserWithSlug($slug);

        $records = User::select(['name', 'image', 'email', 'slug', 'id'])->where('parent_id', '=', $user->id)->get();


        return Datatables::of($records)
            ->editColumn('name', function ($records) {
                return '<a href="' . URL_HOMEWORK_STUDENT .'/'. $records->slug . '" title="' . $records->name . '">' . ucfirst($records->name) . '</a>';
            })
            ->editColumn('image', function ($records) {
                return '<img src="' . getProfilePath($records->image) . '"  />';
            })
            ->removeColumn('slug')
            ->removeColumn('id')
            ->make();
    }


}
