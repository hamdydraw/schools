<?php


namespace App;


use Illuminate\Database\Eloquent\Model;
use App\Scopes\DeleteScope;

class Skill extends Model
{



     protected $table='skills';
     protected $fillable=['skill_title','course_id','subject_id'];
     public $timestamps=false;

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new DeleteScope);
    }

}