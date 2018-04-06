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

    public function getUserExpenses()
    {

        if (!checkRole(getUserGrade(7))) {
            prepareBlockUserMessage();
            return back();
        }

        $data['records'] = false;
        $data['title'] = getPhrase('academic_expenses');
        $data['active_class'] = 'academic_expenses';
        $data['layout'] = getLayout();
        return view('Dues.student_expenses', $data);
    }

    public function getDatatableExpenses()
    {
        $records = App\DuesPurchase::join('users', 'users.id', '=', 'dues_purchase.student_id')
            ->select(['users.name','users.slug','dues_purchase.academic_id','dues_purchase.specifications', 'dues_purchase.created_at', 'dues_purchase.updated_at'])->get();
        return Datatables::of($records)
            ->editColumn('name', function ($records) {
                return $records->name;
            })
            ->editColumn('academic_id', function ($records) {
                return App\Academic::find($records->academic_id)->academic_year_title;
            })
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
            ->addColumn('action', function ($records) {
                return '<div class="dropdown more">
                        <a id="dLabel" type="button" class="more-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li><a href="' . $records->slug . '"><i class="fa fa-pencil"></i>' . getPhrase("pay") . '</a></li>
                        </ul>
                    </div>';
            })
            ->removeColumn('specifications')
            ->removeColumn('slug')
            ->removeColumn('created_at')
            ->removeColumn('updated_at')
            ->make();
    }

}
