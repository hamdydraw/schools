<?php


namespace App\Http\Controllers;


class SkillsController extends Controller
{
    public function index()
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'skills';
        return view('Skills.add-edit',$data);
    }
}