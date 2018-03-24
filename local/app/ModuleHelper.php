<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\DeleteScope;

class ModuleHelper extends Model
{
    protected $table = 'modulehelper';

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new DeleteScope);
    }
    
    public static function getRecord($key)
    {
    	return ModuleHelper::where('slug','=',$key)->first();
    }
}
