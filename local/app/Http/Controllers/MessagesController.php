<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
namespace App\Http\Controllers;
use \App;
use App\User;
use Carbon\Carbon;
use Cmgmyr\Messenger\Models\Message;
use Cmgmyr\Messenger\Models\Participant;
use Cmgmyr\Messenger\Models\Thread;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Session;


class MessagesController extends Controller
{




     /**
     * Show all of the message threads to the user.
     *
     * @return mixed
     */
    public function index()
    {


        if(!getSetting('messaging', 'module'))
        {
            pageNotFound();
            return back();
        }


        //$current_user_role = getRoleData($current_user->role_id);

        if(!getUserGrade(14))
        {
            pageNotFound();
            return back();
        }
        //$module_for = getSetting('messaging_system_for','messaging_system');
        $current_user =     Auth::user();
        $available_types = App\Settings::getMassages();

        if(!in_array($current_user->role_id,$available_types))
        {
                pageNotFound();
                return back();
        }

        $currentUserId = $current_user->id;

        // All threads that user is participating in
        $threads = Thread::forUser($currentUserId)->latest('updated_at')->paginate(getRecordsPerPage());
        // All threads that user is participating in, with new messages

        $data['title']        = getPhrase('create_message');
        $data['active_class'] = 'messages';
        $data['currentUserId']= $currentUserId;
        $data['threads'] 	  = $threads;
        $data['layout']       = getLayout();

        return view('messaging-system.index', $data);
    }
    /**
     * Shows a message thread.
     *
     * @param $id
     * @return mixed
     */
    public function show($id)
    {
        if(!getSetting('messaging', 'module'))
        {
            pageNotFound();
            return back();
        }

        $current_user =     Auth::user();
        $available_types = App\Settings::getMassages();

        if(!in_array($current_user->role_id,$available_types))
        {
            pageNotFound();
            return back();
        }

        try {
            $thread = Thread::findOrFail($id);

        } catch (ModelNotFoundException $e) {
            Session::flash('error_message', 'The thread with ID: ' . $id . ' was not found.');
            return redirect('messages');
        }
        // show current user in list if not a current participant
        // don't show the current user in list
        $userId = Auth::user()->id;
        $thread_participants = $thread->participants()->get();
        $is_member = 0;
        foreach($thread_participants as $tp)
        {
            if($tp->user_id == $userId) {
                $is_member = 1;
                break;
            }
        }


        if(!$is_member)
        {
            pageNotFound();
            return back();
        }

        $participants = $thread->participantsUserIds($userId);

        $users = User::whereNotIn('id', $participants)->get();

        $thread->markAsRead($userId);

        $data['title']        = getPhrase('messages');
        $data['active_class']        = 'messages';
        $data['thread'] 	= $thread;
        $data['users']  = $users;
        $data['layout'] 	= getLayout();

        return view('messaging-system.show', $data);
    }
    /**
     * Creates a new message thread.
     *
     * @return mixed
     */
    public function create()
    {
        if(!getSetting('messaging', 'module'))
        {
            pageNotFound();
            return back();
        }

        $current_user =     Auth::user();
        $available_types = App\Settings::getMassages();

        if(!in_array($current_user->role_id,$available_types))
        {
            pageNotFound();
            return back();
        }


        $available_types = App\Settings::getMassages();
        $users = App\User::whereIn('role_id',$available_types)->where('id','!=',Auth::user()->id)->get();
        if(Auth::user()->role_id == '5'){
            $course_id = get_student_class(Auth::user()->id);
            $first  = User::withoutGlobalScope(\App\Scopes\BranchScope::class)->select('users.name','users.id')->whereIn('role_id',['1','2']);
            $second = User::join('course_subject','users.id','=','course_subject.staff_id')->select('users.name','users.id')->where('course_subject.course_parent_id',$course_id)->union($first)->get();
            $users =  $second;
        }
        $data['title']               = getPhrase('send_message');
        $data['active_class']        = 'messages';
        $data['users']      = $users;
        $data['layout'] 	= getLayout();

        return view('messaging-system.create', $data);
    }
     public function store()
    {
        if(!getSetting('messaging', 'module'))
        {
            pageNotFound();
            return back();
        }

        $current_user =     Auth::user();
        $available_types = App\Settings::getMassages();

        if(!in_array($current_user->role_id,$available_types))
        {
            pageNotFound();
            return back();
        }

        $input = Input::all();
        if (Input::has('recipients')) {

            $selectors = 'hai';
        }

        else{
             flash(getPhrase('Ooops'),getPhrase('please select the recipients'), 'overlay');
             return redirect(URL_MESSAGES_CREATE);
        }
        $thread = Thread::create(
            [
                'subject' => $input['subject'],
            ]
        );
        // Message
        Message::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
                'body'      => $input['message'],
            ]
        );
        // Sender
        Participant::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
                'last_read' => new Carbon,
            ]
        );
        // Recipients
        if (Input::has('recipients')) {
            $thread->addParticipant($input['recipients']);
        }

        return redirect(URL_MESSAGES);
    }

    /**
     * Adds a new message to a current thread.
     *
     * @param $id
     * @return mixed
     */
    public function update($id)
    {
        if(!getSetting('messaging', 'module'))
        {
            pageNotFound();
            return back();
        }

        $current_user =     Auth::user();
        $available_types = App\Settings::getMassages();

        if(!in_array($current_user->role_id,$available_types))
        {
            pageNotFound();
            return back();
        }

        try {
            $thread = Thread::findOrFail($id);
        } catch (ModelNotFoundException $e) {
            Session::flash('error_message', 'The thread with ID: ' . $id . ' was not found.');
            return redirect('messages');
        }
        $thread->activateAllParticipants();
        // Message
        Message::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::id(),
                'body'      => Input::get('message'),
            ]
        );
        // Add replier as a participant
        $participant = Participant::firstOrCreate(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
            ]
        );
        $participant->last_read = new Carbon;
        $participant->save();
        // Recipients
        if (Input::has('recipients')) {
            $thread->addParticipants(Input::get('recipients'));
        }
        return redirect('messages/' . $id);
    }

}
