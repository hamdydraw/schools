<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\DeleteScope;

class Publisher extends Model
{
     protected $table="publishers";
 
    public static function getRecordWithSlug($slug)
    {
        return Publisher::where('slug', '=', $slug)->first();
    }

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new DeleteScope);
    }
}
