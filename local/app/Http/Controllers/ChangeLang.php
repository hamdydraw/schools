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
use Auth;

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
        $data['languages']          = Language::all();
        $data['default_lang']       = $this->get_user_defualt_lang();
        return view('languages.change_lang', $data);

    }

    public function get_user_defualt_lang(){
        $default_lang = Auth::user()->default_lang;
        if($default_lang == null){
            $default_lang = Language::where('is_default',1)->pluck('id')->first();
        }
        return $default_lang;
    }
}
