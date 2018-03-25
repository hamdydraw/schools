<?php

namespace App;

use DB;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\DeleteScope;

class OfflineQuizCategories extends Model
{
    protected $table='quizofflinecategories';

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new DeleteScope);
    }

    public function quizzes()
    {
        return $this->getQuizzes()
        ->where('start_date','<=',date('Y-m-d H:i:s'))
        ->where('end_date','>=',date('Y-m-d H:i:s'))
        ->where('total_questions','>','0')
        ->where('applicable_to_specific', '=', 1)
        ->where('type','=','offline')
        ->get();


    }

    public function getQuizzes()
    {
        return $this->hasMany('App\Quiz', 'category_id');

    }
    
 }
