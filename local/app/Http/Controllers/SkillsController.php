<?php


namespace App\Http\Controllers;


use App\Course;
use App\Subject;
use Illuminate\Http\Request;

class SkillsController extends Controller
{
    public function index()
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title']=getPhrase('add_skills');
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
            ->select(['subjects.id', 'subject_title'])->get();
        $i=0;
        foreach ($allSubjectsRelated as $subject) {
            $data[$i]['subjects_title'] = $subject->subject_title;
            $data[$i]['subjects_id'] = $subject->id;
            $i++;
        }
        return $data;


    }
}