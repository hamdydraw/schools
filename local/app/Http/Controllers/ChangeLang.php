<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use \App;
use App\Http\Requests;
use App\User;
use App\Language;
use App\Student;
use App\GeneralSettings as Settings;
use Image;
use ImageSettings;
use Yajra\Datatables\Datatables;
use DB;
use Spatie\Activitylog\Models\Activity;
use Illuminate\Support\Facades\Hash;
use Input;

class ChangeLang extends Controller
{
    //

    public function __construct(){
        $currentUser = \Auth::user();

        $this->middleware('auth');

    }

    public function index(){

        $data['active_class']       = 'languages';
        $data['title']              = getPhrase('languages');
        $data['layout']             = getLayout();
        $data['module_helper']      = getModuleHelper('languages-list');
        return view('languages.change_lang', $data);

    }
}
