<?php

namespace App\Http\Controllers;

use App;
use App\SubjectPreference;
use Auth;
use DB;
use Illuminate\Http\Request;
use Input;

class SubjectPreferencesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * This method loads the preferred subjects by staff
     * @param  [type] $slug [description]
     * @return [type]       [description]
     */
    public function subjectPreferences($slug)
    {
        $user = getUserRecord();
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role != 'educational_supervisor') {
            if (!isEligible($slug)) {
                prepareBlockUserMessage();
                return back();
            }
        }

        $record = App\User::where('slug', '=', $slug)->first();
        $staff_record = $record->staff()->first();
        if ($isValid = $this->isValidRecord($record)) {
            return redirect($isValid);
        }

        $subjects = App\Subject::where('status', '=', 'Active')->select([
            'id',
            'subject_title',
            'subject_code',
            'maximum_marks',
            'is_lab',
            'is_elective_type'
        ])->get();

        $list = App\SubjectPreference::join('subjects', 'subjectpreferences.subject_id', '=', 'subjects.id')
            ->where('user_id', '=', $record->id)
            ->select(['subjects.id', 'subject_title', 'subject_code', 'maximum_marks', 'is_lab', 'is_elective_type'])
            ->get();
        $role_name = getRoleData($record->role_id);
        if ($role_name != 'staff') {
            $data['active_class'] = 'mastersettings';
        } else {
            $data['active_class'] = 'subjectPreferences';
        }
        $data['record'] = $record;
        $data['title'] = getPhrase('subject_preferences');
        $data['items'] = json_encode(array('source_items' => $subjects, 'target_items' => $list));
        $data['right_bar'] = true;
        $data['right_bar_path'] = 'staff.subject-preferences.item-view-right-bar';
        $data['right_bar_data'] = array(
            'item' => $subjects,
        );
        // exam-series-item-view-right-bar
        $data['layout'] = getLayout();
        return view('staff.subject-preferences.add-edit', $data);
    }

    public function isValidRecord($record)
    {
        if ($record === null) {

            flash(getPhrase('Ooops'), getPhrase("page_not_found"), 'error');
            return $this->getRedirectUrl();
        }

        return false;
    }

    public function update(Request $request, $slug)
    {
        $user = getUserRecord();
        $role = getRoleData($user->role_id);
        $data['role']=$role;
        if ($role != 'educational_supervisor') {
            if (!isEligible($slug)) {
                prepareBlockUserMessage();
                return back();
            }
        }

        $record = App\User::where('slug', '=', $slug)->first();
        $staff_record = $record->staff()->first();

        DB::beginTransaction();
        try {
            $model = SubjectPreference::where('user_id', '=', $record->id);
            $count = $model->count();
            if ($count) {
                //Previous records exists
                $model->delete();
            }

            foreach ($request->selected_list as $key => $value) {
                $newRecord = new SubjectPreference();
                $newRecord->user_id = $record->id;
                $newRecord->staff_id = $staff_record->id;
                $newRecord->subject_id = $value;
                $newRecord->user_stamp($request);
                $newRecord->save();
            }
            DB::commit();
            flash(getPhrase('success'), getPhrase('records_updated_successfully'), 'success');
        } catch (Exception $ex) {
            DB::rollBack();
            if (getSetting('show_foreign_key_constraint', 'module')) {

                flash(getPhrase('Ooops'), $ex->errorInfo, 'error');
            } else {
                flash(getPhrase('Ooops'), getPhrase('improper_data'), 'error');
            }
        }
        return redirect()->back();

    }

    public function getReturnUrl()
    {
        return URL_STAFF_SUBJECT_PREFERENCES . Auth::user()->slug;
    }
}
