<?php

namespace App\Http\Controllers;

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
use Illuminate\Http\Request;
use App\Http\Requests;



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
       // return $threads;

        $data['title']        = getPhrase('create_message');
        $data['active_class'] = 'messages';
        $data['currentUserId']= $currentUserId;
        $data['threads'] 	  = $threads;
        $data['layout']       = getLayout();

        return view('messaging-system.index', $data);
    }

    public function search($key)
    {
        if($key == "all"){
            $threads = Thread::forUser(Auth::user()->id)
                ->select('messenger_threads.id','subject')
                ->latest('messenger_threads.updated_at')
                ->get();
        }else {
            $threads = Thread::forUser(Auth::user()->id)
                             ->select('messenger_threads.id','subject')
                             ->where('subject','like','%'.$key.'%')
                             ->latest('messenger_threads.updated_at')
                             ->get();
          }

        foreach ($threads as $thread){
            $thread->last_time = $thread->latestMessage->updated_at->diffForHumans();
            $thread->body      = $thread->latestMessage->body;
            $thread->username  = getUserName($thread->latestMessage->user_id);
            $thread->role      = getPhrase(getRole($thread->latestMessage->user_id));
            $sender = getUserRecord($thread->latestMessage->user_id);
            $thread->image     = getProfilePath($sender->image);
            $thread->hasfile   = $this->ThreadHasFile($thread->id);
        }
        return $threads;
    }


    public function ThreadHasFile($id)
    {
        $massages = Message::where('thread_id',$id)->get();
        foreach ($massages as $massage){
            if(App\MessagesFile::where('messages_id',$massage->id)->first()){
                return true;
            }
        }
        return false;
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

        $files =  json_decode($input['question_file']);

        if (Input::has('recipients')) {

            $selectors = 'hai';
        }

        else{
             flash(getPhrase('Ooops'),getPhrase('please select the recipients'), 'overlay');
             return redirect(URL_MESSAGES_CREATE);
        }
        $flag = "no";
        if(count($files) > 0){
            $flag = "yes";
        }

        $thread = Thread::create(
            [
                'has_file' => $flag,
                'subject' => $input['subject'],

            ]
        );

        $Message = Message::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
                'body'      => $input['message'],
            ]
        );

        foreach ($input['recipients'] as $reciver)
        {
            $user = User::where('id',$reciver)->first();
            $message['{$reciver}']         = $user->username;
            $message['to_email']        = $user->email;
            $message['{$sender}']          = Auth::user()->username;
            $message['{$sender_type}']     = getRole(Auth::user()->id);
            $message['{$message_subject}'] = $input['subject'];
            $message['{$message_body}']    = $input['message'];
            sendEmail('messages',$message);

        }
        // Sender
        Participant::create(
            [
                'thread_id' => $thread->id,
                'user_id'   => Auth::user()->id,
                'last_read' => new Carbon,
            ]
        );
        //$message['to_email'] =
        // Recipients
        if (Input::has('recipients')) {
            $thread->addParticipant($input['recipients']);
        }

        if(count($files) > 0){
         foreach ($files as $file){
            $mfile = new App\MessagesFile();
            $mfile->file_name = $file;
            $mfile->messages_id = $Message->id;
            $mfile->save();
        }}

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
        $input = Input::all();
        $files =  json_decode($input['question_file']);
        // Message
        $Message = Message::create(
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
        if(count($files) > 0){
            foreach ($files as $file){
                $mfile = new App\MessagesFile();
                $mfile->file_name = $file;
                $mfile->messages_id = $Message->id;
                $mfile->save();
            }}
        // Recipients
        if (Input::has('recipients')) {
            $thread->addParticipants(Input::get('recipients'));
        }
        return redirect('messages/' . $id);
    }




    public function upload(Request $request)
    {
        $destinationPath = "uploads/messages/";
        $record1 = rand(1, 200000);
        $record2 = rand(1, 200000);

        if ($request->hasFile('file')) {

            foreach ($request->file as $file){
                $extension = $file->extension();
                $filename  = $file->getClientOriginalName();
                $finalname[$record1] = $record1 . $filename;
                $file->move($destinationPath,$finalname[$record1]);
                $record1++;
            }
            return json_encode(['state' => 'success', 'desc' => getPhrase('upload_success'), 'files' => $finalname]);
        }

        return json_encode(['state' => 'failed', 'desc' => getPhrase('upload_failed')]);

    }

    public function deleteFile($file)
    {

        if(file_exists(getcwd()."/uploads/messages/".$file)){
            unlink(getcwd()."/uploads/messages/".$file);
        }else{
            return "file not found";
        }

    }

}
