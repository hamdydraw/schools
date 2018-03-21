<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\User;
use Yajra\Datatables\Datatables;
use App\Scopes\DeleteScope;

class trashesController extends Controller
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
        $records['students'] = User::where('role_id',5)->select('id','slug','username')->withoutGlobalScope(DeleteScope::class)->where('record_status','=','3');
        $records['teachers'] = User::where('role_id',3)->select('id','slug','username');

        return Datatables::of($records['students'])
            ->addColumn('action', function ($records) {
                return "<button>return</button>";
            })
            ->make();

    }

}
