<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class user_notifications extends Model
{
    protected $table = "user_notification";
    public $timestamps = false;

    public static function get_new_count(){
        return user_notifications::where('state','new')->where('user_id',Auth::user()->id)->count();
    }

    public static function viewed($id){
        $update['state'] = 'old';
        user_notifications::where('notification_id',$id)->where('user_id',Auth::user()->id)->update($update);
    }
}
