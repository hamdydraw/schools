<?php


namespace App;


use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
     protected $table='skills';
     protected $fillable=['skill_title','course_id','subject_id'];
     public $timestamps=false;

}