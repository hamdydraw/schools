<?php

namespace App\Http\Controllers;

use App\Academic;
use App\AcademicDues;
use App\AcademicDuesPivot;
use App\Settings;
use App\User;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;

class DuesController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title'] = getPhrase('academic_dues');
        return view('Dues.all_dues', $data);
    }

    public function create()
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title'] = getPhrase('add_academic_dues');
        $data['academics_years'] = Academic::select(['id', 'academic_year_title'])->get();
        $data['allDues'] = AcademicDues::select(['id', 'title'])->get();
        return view('Dues.add-edit', $data);
    }

    public function store(Request $request)
    {
        if ($request->academic_year == "select" or $request->academic_dues == "select" or $request->due_value == "select" or $request->due_type == "select") {
            flash(getPhrase('error'), getPhrase("you_should_fill_all_fields"), 'error');
            return redirect()->back();
        }
        $relation = new AcademicDuesPivot();
        $relation->academic_id = $request->academic_year;
        $relation->due_id = $request->academic_dues;
        $relation->due_value = $request->due_value;
        $relation->due_type = $request->due_type;
        $relation->user_stamp($request);
        $relation->save();
        flash(getPhrase('success'), getPhrase("saved_successfully"), 'success');
        return redirect()->back();
    }

    public function getDatatable()
    {
        $records = AcademicDuesPivot::select(['id', 'academic_id', 'due_id', 'due_value', 'due_type'])->get();
        return Datatables::of($records)
            ->editColumn('academic_id', function ($record) {
                return Academic::find($record->academic_id)->academic_year_title;
            })
            ->editColumn('due_id', function ($record) {
                return AcademicDues::find($record->due_id)->title;
            })
            ->editColumn('due_type', function ($record) {
                return getPhrase($record->due_type);
            })->addColumn('action', function ($records) {
                return '<div class="dropdown more">
                        <a id="dLabel" type="button" class="more-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-dots-vertical"></i>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li><a href="dues/edit/' . $records->id . '"><i class="fa fa-pencil"></i>' . getPhrase("edit") . '</a></li>
                           
                            <li><a href="dues/delete/' . $records->id . '"><i class="fa fa-trash"></i>' . getPhrase("delete") . '</a></li>
                            
                        </ul>
                    </div>';
            })
            ->removeColumn('id')
            ->make();
    }

    public function edit($id)
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'academic';
        $data['title'] = getPhrase('edit_academic_dues');
        $data['academics_years'] = Academic::select(['id', 'academic_year_title'])->get();
        $data['allDues'] = AcademicDues::select(['id', 'title'])->get();
        $data['record'] = AcademicDuesPivot::find($id);
        return view('Dues.add-edit', $data);
    }

    public function update(Request $request, $id)
    {
        if ($request->academic_year == "select" or $request->academic_dues == "select" or $request->due_value == "select" or $request->due_type == "select") {
            flash(getPhrase('error'), getPhrase("all_fields_should_be_filled"), 'error');
            return redirect()->back();
        }
        $relation = AcademicDuesPivot::find($id);
        $relation->academic_id = $request->academic_year;
        $relation->due_id = $request->academic_dues;
        $relation->due_value = $request->due_value;
        $relation->due_type = $request->due_type;
        $relation->user_stamp($request);
        $relation->update();
        flash(getPhrase('success'), getPhrase("updated_successfully"), 'success');
        return redirect()->back();
    }

    public function delete($id)
    {
        if (AcademicDuesPivot::find($id)->delete()) {
            flash(getPhrase('deleted'), getPhrase('deleted_successfully'), 'success');
        } else {
            flash(getPhrase('error'), getPhrase('error_happened'), 'error');
        }
        return redirect()->back();
    }

    public function viewParentPurchase($slug)
    {
        $data['layout'] = getLayout();
        $data['active_class'] = 'children';
        $data['title'] = getPhrase('parent_purchase');
        $data['record'] = User::where('slug', $slug)->first();
        $currentAcademicYear = new Academic();
        $currentAcademicYear = $currentAcademicYear->getCurrentAcademic()->id;
        $schoolExp = AcademicDuesPivot::join('academics_dues', 'academics_dues.id', '=',
            'academics_dues_pivot.due_id')
            ->where('academics_dues_pivot.academic_id', $currentAcademicYear)
            ->select(['academics_dues_pivot.id','academics_dues_pivot.due_value', 'academics_dues_pivot.due_type', 'academics_dues.title'])
            ->get();
        $data['total']=0;
        $data['schoolExpenses']=$schoolExp;
        if ($data['schoolExpenses'] != null) {
            foreach ($data['schoolExpenses'] as $value) {
                if ($value->due_type == 'mandatory') {
                    $data['total'] += $value->due_value;
                }
            }
        }
        $data['settingsModule']=Settings::where('key','module')->first(['settings_data']);
        $data['settingsModule']= json_decode($data['settingsModule']->settings_data);
        return view('Dues.parent_purchase', $data);
    }
}
