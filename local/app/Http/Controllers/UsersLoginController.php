<?php

namespace App\Http\Controllers;

use App\UsersLogin;
use Illuminate\Http\Request;
use function Symfony\Component\VarDumper\Tests\Fixtures\bar;
use Yajra\Datatables\Datatables;
use DB;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class UsersLoginController extends Controller
{
    public function index()
    {
        if (!checkRole(getUserGrade(2))) {
            prepareBlockUserMessage();
            return back();
        }
        $data['title'] = getPhrase('users_records');
        $data['active_class'] = 'users';
        return view('users-login.list',$data);
    }

    public function getDatatable()
    {
        $records = UsersLogin::join('users','users_login.users_id','=','users.id')->select([
            'users_login.id','users.name','users_login.created_at','users_login.created_by_ip'
        ]);
        return Datatables::of($records)
            ->make();

    }

    public function deleteRecords()
    {
        DB::table('users_login')->truncate();
        return back();
    }
}
