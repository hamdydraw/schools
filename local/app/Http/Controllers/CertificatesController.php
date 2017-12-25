<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use \App;
use App\Settings;
use App\QuizResult;
use App\User;
use Auth;
use Exception;
class CertificatesController extends Controller
{
	 public function __construct()
    {
    	$this->middleware('auth');
    }

    /**
     * This method generates the certificates based on the sent slug
     * The certificate can be generated by the same user or by admin user
     * Based on the provided slug, verify the current user is the same user or parent user or admin
     * If any other tries to access the record we restrict that user to view the record
     * @param  [type] $result_slug [description]
     * @return [type]              [description]
     */
    public function getCertificate($result_slug)
    {


    	if(!getSetting('certificate','module'))
    	{
    		pageNotFound();
    		return back();
    	}

    	$record      = QuizResult::where('slug', $result_slug)->get()->first();
    	

       
        if($isValid  = $this->isValidRecord($record))
         return redirect($isValid);
    	
     	$user        = getUserRecord($record->user_id);

     	$quiz_record = App\Quiz::where('id','=',$record->quiz_id)->first();
     	
     	 
     	/**
         * Make sure the Admin or staff cannot edit the Admin/Owner accounts
         * Only Owner can edit the Admin/Owner profiles
         * Admin can edit his own account, in that case send role type admin on condition
         */
        $current_user = \Auth::user();
          $UserOwnAccount = FALSE;
     if($current_user->id == $user->id)
      $UserOwnAccount = TRUE;
    
      if(!$UserOwnAccount)  {
        $current_user_role = getRoleData($current_user->role_id);

        if((($current_user_role=='admin' || $current_user_role == 'owner') ))
        {
          if(!checkRole(getUserGrade(1))) {
            prepareBlockUserMessage();
            return back();
          }
        }
      }
 
    
        $data['active_class']       = 'analysis';
        $data['result']       		= $record;
        $data['user']       		= $user;

        $certificate_data                = [];
        $certificate_data['username']    = ucfirst($user->name);
        $certificate_data['course_name'] = ucfirst($quiz_record->title);
        $certificate_data['marks']   = $record->marks_obtained.' ('.$record->percentage.'%)';

        $content = \Blade::compileString($this->getContentTemplate());

        $result = $this->render($content, $certificate_data);

 
        $data['content']       		= $result;

        $data['title']              = getPhrase('certificate_generation');
    	return view('exams.certificates.template', $data);
    }

    	/**
	 * Returns the template html code by forming header, body and footer
	 * @param  [type] $template [description]
	 * @return [type]           [description]
	 */
	public function getContentTemplate()
	{
		
    	$content = getSetting('content','certificate');
    	
    	$view = \View::make('exams.certificates.content-template', [
    											'content' => $content, 
    											]);

		return $view->render();
	}

		/**
	 * Prepares the view from string passed along with data
	 * @param  [type] $__php  [description]
	 * @param  [type] $__data [description]
	 * @return [type]         [description]
	 */
    public function render($__php, $__data)
	{
	    $obLevel = ob_get_level();
	    ob_start();
	    extract($__data, EXTR_SKIP);
	    try {
	        eval('?' . '>' . $__php);
	    } catch (Exception $e) {
	        while (ob_get_level() > $obLevel) ob_end_clean();
	        throw $e;
	    } catch (Throwable $e) {
	        while (ob_get_level() > $obLevel) ob_end_clean();
	        throw new FatalThrowableError($e);
	    }
	    return ob_get_clean();
	}

    public function isValidRecord($record)
    {
      if ($record === null) {
        flash('Ooops...!', getPhrase("page_not_found"), 'error');
        return $this->getRedirectUrl();
    }

    return FALSE;
    }

    public function getReturnUrl()
    {
      return PREFIX;
    }

    /**
     * This method loads the certificates dashboard
     * @return [type] [description]
     */
    public function certificatesDashboard()
    {
        $data['active_class']       = 'academic';
        $data['title']              = getPhrase('certificates_dashboard');
        $data['user']               = Auth::user();
        $data['layout']             = getLayout();
        $data['module_helper']      = getModuleHelper('certificates-dashboard');

        return view('certificates.dashboard', $data); 
    }

    /**
     * This method loads the view for selection of candidates to ID cards
     * @return [type] [description]
     */
    public function idCards()
    {
        $data['active_class']       = 'academic';
        $data['title']              = getPhrase('id_card_generation');
        $data['user']               = Auth::user();

        $data['academic_years']     = addSelectToList(getAcademicYears());
        
        $data['layout']             = getLayout();
        $data['module_helper']      = getModuleHelper('id-cards');
        $data['institute_address']  = getSetting('institute_address','id_card_settings');
 
        return view('certificates.students.selection-view', $data);        
    }

    /**
     * This method will print the user ID cards
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    public function printCards(Request $request)
    {
        $academic_id        = $request->academic_id;
        $course_parent_id   = $request->course_parent_id;
        $course_id          = $request->course_id;
        
        $semister           = 0;
        $year = 1;

        if($request->has('current_year'))
            $year               = $request->current_year;


        if($request->has('current_semister'))
            $semister           = $request->current_semister;

        $selected_users     = $request->selected_list;
        $users_list         = [];
        
         if(!count($selected_users))
         {
             flash('Ooops..','please_select_any_users', 'error');
            return redirect(URL_CERTIFICATES_GENERATE_IDCARD);
         }

         foreach($selected_users as $user)
            array_push($users_list, $user);
        
        
          $records = User::join('students', 'users.id' ,'=', 'students.user_id')  
        ->join('academics','academics.id','=','students.academic_id') 
        ->join('courses','courses.id','=','students.course_id')
        ->where('academic_id','=',$academic_id)
        ->where('course_id','=',$course_id)
        ->where('current_year','=',$year)
        ->where('current_semister','=',$semister)
        ->whereIn('users.id',$selected_users)
        ->select(['students.user_id as id','users.name', 'roll_no','admission_no', 'course_title','blood_group','mobile','home_phone','image','academic_year_title','address_lane1','city','state','fathers_name'])
        ->get();
        // dd($records);
        $data['users_list'] = $records;
        $data['title']      = getPhrase('id_card_generation');
        
        $template_name = 'certificates.html-templates.id-cards.id';
        $template_key = getSetting('select_template', 'id_card_settings');
        switch($template_key)
        {
            case 'template_1': $template_name = 'certificates.html-templates.id-cards.template-1'; break;
            case 'template_2': $template_name = 'certificates.html-templates.id-cards.id'; break;
            
        }
        
        
        $view = \View::make($template_name, $data);
       
        $contents = $view->render();
        return $contents;
      

    }


     /**
     * Capture the invoice as a PDF and return the raw bytes.
     *
     * @param  array  $data
     * @return string
     */
    public function pdf($data)
    {
        if (! defined('DOMPDF_ENABLE_AUTOLOAD')) {
            define('DOMPDF_ENABLE_AUTOLOAD', false);
        }

        if (file_exists($configPath = base_path().'/vendor/dompdf/dompdf/dompdf_config.inc.php')) {
            dd($configPath);
            require_once $configPath;
        }

        $dompdf = new DOMPDF;

        $dompdf->load_html($data);

        $dompdf->render();

        return $dompdf->output();
    }


    /**
     * This method will load a view to generate bonafide certificates
     * @return [type] [description]
     */
    public function bonafideCertificates()
    {
        $data['active_class']       = 'academic';
        $data['title']              = getPhrase('bonafide /_transfer_certificate');
        $data['user']               = Auth::user();
        $data['academic_years']     = addSelectToList(\App\Academic::pluck('academic_year_title', 'id'));
        $data['right_bar']          = TRUE;
        $data['right_bar_path']     = 'certificates.students.bonafide.right-bar';
        $data['right_bar_data']     = array('chart_data' =>'' );
        $data['layout']             = getLayout();
        $data['module_helper']      = getModuleHelper('allocate-certificate');
        return view('certificates.students.bonafide.bonafide-view', $data); 
    }

}
