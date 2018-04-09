<?php
/**
 * Created by PhpStorm.
 * User: ImaginaryKing
 * Date: 3/18/2018
 * Time: 9:06 AM
 */
namespace App\Scopes;

use Illuminate\Database\Eloquent\Scope;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;

class BranchScope implements Scope
{

    public function apply(Builder $builder, Model $model)
    {
        return $builder->where($model->getTable().".branch_id", '=', Auth::user()->branch_id);
    }
}