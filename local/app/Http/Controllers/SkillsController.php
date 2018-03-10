<?php


namespace App\Http\Controllers;


use App\Course;
use App\Skill;
use App\Subject;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;

class SkillsController extends Controller
{
    public function index()
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title'] = getPhrase('skills');
        return view('Skills.all_skills', $data);
    }

    public function create()
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title'] = 'add_skills';
        $courses = Course::where('id', '<', '23')->select(['id', 'course_title'])->get();
        foreach ($courses as $course) {
            $data['course_title'][] = $course->course_title;
            $data['course_id'][] = $course->id;
        }
        $data['courses'] = array_combine($data['course_id'], $data['course_title']);
        return view('Skills.add-edit', $data);
    }

    public function getDatatable()
    {
        $records = Skill::select(['id','skill_title', 'course_id', 'subject_id'])->get();
        return Datatables::of($records)
            ->editColumn('course_id', function ($record) {
                return Course::find($record->course_id)->course_title;
            })
            ->editColumn('subject_id', function ($record) {
                return Subject::find($record->subject_id)->subject_title;
            })
            ->addColumn('action', function ($records) {
                return '<div class="dropdown more">
                        <a id="dLabel" type="button" class="more-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li><a href="skills/edit/'.$records->id.'"><i class="fa fa-pencil"></i>' . getPhrase("edit") . '</a></li>
                           
                            <li><a href="skills/delete/'.$records->id.'"><i class="fa fa-trash"></i>' . getPhrase("delete") . '</a></li>
                            
                        </ul>
                    </div>';
            })
            ->removeColumn('id')
            ->make();
    }
    public function edit($id)
    {

        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title'] ='edit_skills';
        $data['record']=Skill::find($id);

       /* $data['subject']=Subject::find($data['record']->subject_id)->subject_title;*/
        $courses = Course::where('id', '<', '23')->select(['id', 'course_title'])->get();
        foreach ($courses as $course) {
            $data['course_title'][] = $course->course_title;
            $data['course_id'][] = $course->id;
        }
        $data['courses'] = array_combine($data['course_id'], $data['course_title']);
        return view('Skills.add-edit', $data);

    }
    public function getRelatedSubjects(Request $request)
    {
        $allSubjectsRelated = Subject::join('course_subject', 'subjects.id', '=', 'course_subject.subject_id')
            ->where('course_parent_id', $request->course_parent_id)
            ->select(['subjects.id', 'subject_title'])->groupBy('subjects.id')->get();
        $i = 0;
        foreach ($allSubjectsRelated as $subject) {
            $data[$i]['subjects_title'] = $subject->subject_title;
            $data[$i]['subjects_id'] = $subject->id;
            $i++;
        }
        return $data;
    }

    public function store(Request $request)
    {
        $skills_title = $request->skills;
        if ($request->subjects == 0 or $request->courses == 0) {
            flash(getPhrase('error'), getPhrase('select_all_fields_please'), 'error');
            return redirect()->back();
        }
        foreach ($skills_title as $skill) {
            if ($skill != '') {
                Skill::create([
                    'skill_title' => $skill,
                    'course_id' => $request->courses,
                    'subject_id' => $request->subjects
                ]);
            }
        }
        flash(getPhrase('saved'), getPhrase('skills_saved_successfully'), 'success');
        return redirect()->back();
    }
    public function update(Request $request,$id)
    {
        $skills_title = $request->skills;
        $skill_record=Skill::find($id);
        if ($request->subjects == 0 or $request->courses == 0) {
            flash(getPhrase('error'), getPhrase('select_all_fields_please'), 'error');
            return redirect()->back();
        }
        foreach ($skills_title as $skill) {
            if ($skill != '') {
                $skill_record->skill_title=$skill;
                $skill_record->course_id=$request->courses;
                $skill_record->subject_id=$request->subjects;
                $skill_record->update();
            }
        }
        flash(getPhrase('updated'), getPhrase('skills_updated_successfully'), 'success');
        return redirect()->back();
    }
    public function delete($id)
    {
        if (Skill::find($id)->delete())
        {
            flash(getPhrase('deleted'), getPhrase('skill_deleted_successfully'), 'success');
        }else{
            flash(getPhrase('error'), getPhrase('error_happened'), 'error');
        }
        return redirect()->back();
    }
}