<?php

namespace App\Http\Controllers;
use \App;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use Yajra\Datatables\Datatables;
use DB;
use Spatie\Activitylog\Models\Activity;

class ParentsController extends Controller
{
     public function __construct()
    {
         $currentUser = \Auth::user();
      
      
      $this->middleware('auth');
    
    }
    
    /**
    * Display a listing of the resource.
    *
    * @return Response
    */
     public function index()
     {
       
       $user = getUserWithSlug();

      if(!checkRole(getUserGrade(7)))
      {
        prepareBlockUserMessage();
        return back();
      }

        if (!isEligible($user->slug)) {
            return back();
        }

        $data['records'] = false;
        $data['user'] = $user;
        $data['title'] = getPhrase('children');
        $data['active_class'] = 'children';
        $data['layout'] = getLayout();
        return view('parent.list-users', $data);
    }

     /**
     * This method returns the datatables data to view
     * @return [type] [description]
     */
    
    public function getDatatable($slug)
    {
        $records = array();
        $user = getUserWithSlug($slug);

        $records = User::select(['name', 'image', 'email', 'slug', 'id'])->where('parent_id', '=', $user->id)->get();


        return Datatables::of($records)
            ->addColumn('action', function ($records) {
                $buy_package = '';

                if (!isSubscribed('main', $records->slug) == 1) {
                    return '<div class="dropdown more">
                        <a id="dLabel" type="button" class="more-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                           <li><a href="' . URL_USERS_EDIT . $records->slug . '"><i class="fa fa-pencil"></i>' . getPhrase("edit") . '</a></li>
                           <li><a href="purchase-expenses/' . $records->slug . '"><i class="fa fa-pencil"></i>' . getPhrase("school_expenses") . '</a></li>
                           <li><a href="purchase-expenses/all/' . $records->slug . '"><i class="fa fa-pencil"></i>' . getPhrase("all_expenses") . '</a></li>

                        </ul>
                    </div>';
                }
            })
            
         ->editColumn('name', function($records)
         {
          return '<a href="'.URL_USER_DETAILS.$records->slug.'" title="'.$records->name.'">'.ucfirst($records->name).'</a>';
         })       
         ->editColumn('image', function($records){
            return '<img src="'.getProfilePath($records->image).'"  />';
        })
         ->removeColumn('slug')
         ->removeColumn('id')

        ->make();
    }

    public function childrenAnalysis()
    {
       
       $user = getUserWithSlug();

      if(!checkRole(getUserGrade(7)))
      {
        prepareBlockUserMessage();
        return back();
      }

        if (!isEligible($user->slug)) {
            return back();
        }

        $data['records'] = false;
        $data['user'] = $user;
        $data['title'] = getPhrase('children_analysis');
        $data['active_class'] = 'analysis';
        $data['layout'] = getLayout();
        return view('parent.list-users', $data);
    }

    public function getUserExpenses($slug)
    {
        $user = getUserWithSlug();

        if (!checkRole(getUserGrade(7))) {
            prepareBlockUserMessage();
            return back();
        }

        if (!isEligible($user->slug)) {
            return back();
        }

        $data['records'] = false;
        $data['user'] = $user;
        $data['title'] = getPhrase('children');
        $data['active_class'] = 'children';
        $data['layout'] = getLayout();
        $data['slug'] = $slug;
        return view('Dues.student_expenses', $data);
    }

    public function getDatatableExpenses($slug)
    {
        $records = App\DuesPurchase::join('users', 'users.id', '=', 'dues_purchase.student_id')
            ->where('users.slug', $slug)
            ->select(['dues_purchase.specifications', 'dues_purchase.created_at', 'dues_purchase.updated_at'])->get();
        return Datatables::of($records)
            ->addColumn('total', function ($records) {
                return json_decode($records->specifications, true)['total'];
            })
            ->addColumn('payed', function ($records) {
                return json_decode($records->specifications, true)['your_money'];
            })
            ->addColumn('remained', function ($records) {
                return json_decode($records->specifications, true)['remain_purchase'];
            })
            ->addColumn('expenses', function ($records) {
                return json_decode($records->specifications, true)['dues_title'];
            })
            ->addColumn('created', function ($records) {
                return $records->created_at;
            })
            ->addColumn('updated', function ($records) {
                return $records->updated_at;
            })
            ->removeColumn('specifications')
            ->removeColumn('created_at')
            ->removeColumn('updated_at')
            ->make();
    }
}
