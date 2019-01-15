<?php

namespace App\Http\Controllers\Auth;

use \App;
use App\User;
use Validator;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use \Auth;
use Socialite;
use Exception;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';
    protected $dbuser = '';
    protected $provider = '';


    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware($this->guestMiddleware(), ['except' => 'logout']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'username' => 'required|max:255|unique:users',
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {

        $type = 'student';
        if($data['is_student'])
            $type = 'parent';

        $role = getRoleData($type);

        $user           = new User();
        $user->name     = $data['name'];
        $user->username     = $data['username'];

        $user->email    = $data['email'];
        $user->password = bcrypt($data['password']);
        $user->role_id  = $role;
        $user->slug     = $user->makeSlug($user->name);

        $user->save();

        $user->roles()->attach($user->role_id);
        try{
            // $this->sendPushNotification($user);
        sendEmail('registration', array('user_name'=>$user->name, 'username'=>$data['username'], 'to_email' => $user->email, 'password'=>$data['password']));

          }
         catch(Exception $ex)
        {

        }

        flash(getPhrase('success'),getPhrase('record_added_successfully'), 'success');

        $options = array(
                            'name' => $user->name,
                            'image' => getProfilePath($user->image),
                            'slug' => $user->slug,
                            'role' => getRoleData($user->role_id),
                        );
        // pushNotification(['owner','admin'], 'newUser', $options);
         return $user;
    }



      public function sendPushNotification($user)
     {
        if(getSetting('push_notifications', 'module')) {
          if(getSetting('default', 'push_notifications')=='pusher') {
              $options = array(
                    'name' => $user->name,
                    'image' => getProfilePath($user->image),
                    'slug' => $user->slug,
                    'role' => getRoleData($user->role_id),
                );

            pushNotification(['owner','admin'], 'newUser', $options);
          }
          else {
            $this->sendOneSignalMessage('New Registration');
          }
        }
     }


    /**
     * This is method is override from Authenticate Users class
     * This validates the user with username or email with the sent password
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    public function postLogin(Request $request)
    {
        $login_status = FALSE;
        if ($user=Auth::attempt(['username' => $request->email, 'password' => $request->password,'status'=>1])) {
                // return redirect(PREFIX);
                if ($user === true) {
                    $login_status = true;
                    $logged =  User::where('username','=',$request->email)->pluck('id')->first();
                    $loggedUser = new App\UsersLogin();
                    $loggedUser->users_id = $logged;
                    $loggedUser->user_stamp($request);
                    $loggedUser->save();

                }
                elseif ($user === 'detained')
                {
                    return redirect()->back()
                        ->withErrors([
                            getPhrase('this_user_is_detained')
                        ]);
                }
        }

        elseif ($user=Auth::attempt(['email'=> $request->email, 'password' => $request->password,'status'=>1])) {
            if ($user === true) {
                $login_status = true;
                $logged =  User::where('email','=',$request->email)->pluck('id')->first();
                $loggedUser = new App\UsersLogin();
                $loggedUser->users_id = $logged;
                $loggedUser->user_stamp($request);
                $loggedUser->save();

            }
            elseif ($user === 'detained')
            {
                return redirect()->back()
                    ->withErrors([
                        getPhrase('this_user_is_detained')
                    ]);
            }
        }

        elseif ($user=Auth::attempt(['id_number'=> $request->email, 'password' => $request->password,'status'=>1])) {
            if ($user === true) {
                $login_status = true;
                $logged =  User::where('id_number','=',$request->email)->pluck('id')->first();
                $loggedUser = new App\UsersLogin();
                $loggedUser->users_id = $logged;
                $loggedUser->user_stamp($request);
                $loggedUser->save();
            }
            elseif ($user === 'detained')
            {
                return redirect()->back()
                    ->withErrors([
                        getPhrase('this_user_is_detained')
                    ]);
            }
        }

        if(!$login_status)
        {
               return redirect()->back()
            ->withInput($request->only($this->loginUsername(), 'remember'))
            ->withErrors([
                $this->loginUsername() => $this->getFailedLoginMessage(),
            ]);
        }

        /**
         * Check if the logged in user is parent or student
         * if parent check if admin enabled the parent module
         * if not enabled show the message to user and logout the user
         */

        if($login_status) {
            if(checkRole(getUserGrade(7)))  {
               if(!getSetting('parent', 'module')) {
                return redirect(URL_PARENT_LOGOUT);
               }
            }
        }

        /**
         * The logged in user is student/admin/owner
         */
            if($login_status)
            {
                if(Auth::user()->role_id != 6 && Auth::user()->role_id != 10){
                  session()->put('branch_id', Auth::user()->branch_id);
                }
                session()->put('is_student', '0');
                if(checkRole(getUserGrade(5)))
                {
                    $user = App\User::where('id_number','=',$request->email)->first();
                    if($user)
                    {
                        session()->put('is_student', '1');
                        session()->put('user_record', prepareStudentSessionRecord($user->slug));


                    }
                }
                App\Language::resetLanguage();
                return redirect(PREFIX);
            }


    }



     /**
     * Redirect the user to the GitHub authentication page.
     *
     * @return Response
     */
    protected $providers = [
        'facebook' => FacebookServiceProvider::class,
    ];

    public function redirectToProvider($driver)
    {
        return (new $this->providers[$driver])->redirect();
    }


     /**
     * Obtain the user information from GitHub.
     *
     * @return Response
     */

    /**
     * This method checks for the user availability
     * @param  [type] $user [description]
     * @return [type]       [description]
     */
    public function checkIsUserAvailable($user)
    {

        $id         = $user->getId();
        $nickname   = $user->getNickname();
        $name       = $user->getName();
        $email      = $user->getEmail();
        $avatar     = $user->getAvatar();

        $this->dbuser = User::where('email', '=',$email)->first();

        if($this->dbuser) {
            //User already available return true
            return TRUE;
        }

        $newUser = array(
                            'name' => $name,
                            'email'=>$email,
                        );
        $newUser = (object)$newUser;

        $userObj = new User();
       $this->dbuser = $userObj->registerWithSocialLogin($newUser);
       $this->dbuser = User::where('slug','=',$this->dbuser->slug)->first();
       $this->sendPushNotification($this->dbuser);
       return TRUE;

    }

    /**
     * This method will be executited if the user
     * click on back button at social login site
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    public function socialLoginCancelled(Request $request)
    {
         return redirect(PREFIX);
    }
}
