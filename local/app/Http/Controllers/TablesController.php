<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class TablesController extends Controller
{
    public function index()
    {
        if (!checkRole(getUserGrade(2))) {
            prepareBlockUserMessage();
            return back();
        }
        $data['title']        = getPhrase('tables');
        $data['active_class'] = 'dashboard';
        $data['tables']       = $this->getTables();
        return view('table.list',$data);
    }

    public function fix()
    {
        if (!checkRole(getUserGrade(2))) {
            prepareBlockUserMessage();
            return back();
        }
        $tables  = DB::select('SHOW TABLES');
        foreach ($tables as $table){

            if($table->Tables_in_sasbit_school == 'branch'){continue;}
            $current = $table->Tables_in_sasbit_school;

            $columns = Schema::getColumnListing($table->Tables_in_sasbit_school);
            if(!$this->inArray('created_at',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP");
            }
            if(!$this->inArray('updated_at',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `updated_at` TIMESTAMP NULL DEFAULT NULL");
            }
            if(!$this->inArray('created_by_ip',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `created_by_ip` VARCHAR(120) NULL DEFAULT NULL");
            }
            if(!$this->inArray('updated_by_ip',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `updated_by_ip` VARCHAR(120) NULL DEFAULT NULL");
            }
            if(!$this->inArray('created_by_user',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `created_by_user` BIGINT NULL DEFAULT NULL");
            }
            if(!$this->inArray('updated_by_user',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `updated_by_user` BIGINT NULL DEFAULT NULL");
            }
            if(!$this->inArray('record_status',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `record_status` TINYINT NOT NULL DEFAULT '1' ");
            }
            if(!$this->inArray('branch_id',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `branch_id` SMALLINT NULL DEFAULT '1' ");
            }
            if(!$this->inArray('table_name',$columns)){
                DB::statement("ALTER TABLE `$current` ADD `table_name` VARCHAR(110) NOT NULL DEFAULT '$current'");
            }
        }
        flash(getPhrase('success'), getPhrase('tables_fixed'), 'success');
        return back();
    }

    public function getTables()
    {
        $tables  = DB::select('SHOW TABLES');
        $records = ['created_at','updated_at','updated_by_ip','created_by_ip','created_by_user','updated_by_user','record_status','table_name','branch_id'];
        foreach ($tables as $table){
            $table->title = $table->Tables_in_sasbit_school;
            $columns = Schema::getColumnListing($table->Tables_in_sasbit_school);
            foreach ($records as $record){
                if($this->inArray($record,$columns)){
                    $table->$record = true;
                }else{ $table->$record = false;}
            }

        }
        return $tables;
    }


    public function inArray($needle,$array)
    {
        if(in_array($needle,$array)){
            return true;
        }
        return false;
    }
}
