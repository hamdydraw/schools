<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\DeleteScope;

class LibraryAssetType extends Model
{
	protected $table = 'libraryassettypes';

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new DeleteScope);
    }

    public static function getRecordWithSlug($slug)
    {
        return LibraryAssetType::where('slug', '=', $slug)->first();
    }
}
