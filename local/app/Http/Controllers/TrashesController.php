<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use function Symfony\Component\HttpKernel\Tests\controller_func;
use Yajra\Datatables\Datatables;
use App\Scopes\DeleteScope;
use Illuminate\Support\Facades\DB;

class TrashesController extends Controller
{
    public function index()
    {
        if (!checkRole(getUserGrade(2))) {
            prepareBlockUserMessage();
            return back();
        }
        $data['title'] = getPhrase('deleted_records');
        $data['active_class'] = 'users';
        return view('trashes.list',$data);
    }

    public function getDatatable(){

        if (!checkRole(getUserGrade(2))) {
            prepareBlockUserMessage();
            return back();
        }

        $tables = get_main_tables();
        $records  = DB::table('users')->select('id','name','table_name','slug','updated_at')->where('record_status','=','3')->orderBy('updated_at','desc');
//        $records2 = DB::table('timingset')->select('id','slug','table_name','updated_at')->where('record_status','=','3')->union($records);
        foreach ($tables as $table){
            if($table == 'users'){continue;}
            $title = get_title_column($table);
            if($title == false){continue;}
            $looper = DB::table($table)->select('id',$title,'table_name','slug','updated_at')->where('record_status','=','3')->orderBy('updated_at','desc');
            $records->union($looper);
        }

        return Datatables::of($records)
            ->addColumn('action', function ($records) {
                return "<a class='btn btn-primary' href='".PREFIX."trashes/retrieve/$records->slug/$records->table_name'>".getPhrase('retrieve')."</a>";
            })
            ->make();

    }

    public function retrieve($slug,$table){

        if (!checkRole(getUserGrade(2))) {
            prepareBlockUserMessage();
            return back();
        }

        $tables = get_main_tables();

        array_push($tables,'users');
        if(! in_array($table,$tables)){
            pageNotFound();
            return back();
        }
        DB::table($table)->where('slug',$slug)->update(['record_status' => 2]);

        flash(getPhrase('success'), getPhrase('record_retrieved_successfully'), 'success');
        return back();
    }

}
