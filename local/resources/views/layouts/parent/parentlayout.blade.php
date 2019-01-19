<!DOCTYPE html>

<html lang="en" dir="{{ (App\Language::isDefaultLanuageRtl()) ? 'rtl' : 'ltr' }}">
<head>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="{{getSetting('meta_description', 'seo_settings')}}">

	<meta name="keywords" content="{{getSetting('meta_keywords', 'seo_settings')}}">



	<link rel="icon" href="{{IMAGE_PATH_SETTINGS.getSetting('site_favicon', 'site_settings')}}" type="image/x-icon" />

	<title>@yield('title') {{ isset($title) ? $title : getSetting('site_title','site_settings') }}</title>

	<!-- Bootstrap Core CSS -->

	@if(Session::has('lang_dir') && Session::get('lang_dir') == 0 )
	<link href="{{CSS}}bootstrap_en.min.css" rel="stylesheet">
	<link href="{{CSS}}{{\App\Settings::get_default_theme()}}-theme-en.css" rel="stylesheet">
	@else
	<link href="{{CSS}}bootstrap.min.css" rel="stylesheet">
	<link href="{{CSS}}{{\App\Settings::get_default_theme()}}-theme.css" rel="stylesheet">
	@endif

	<link rel="stylesheet" href="{{CSS}}bootstrap-datepicker.min.css">

	<!-- Custom CSS -->


	<!-- Morris Charts CSS -->

	<link href="{{CSS}}plugins/morris.css" rel="stylesheet">

	<!-- Custom Fonts -->

	<link href="{{CSS}}custom-fonts.css" rel="stylesheet" type="text/css">

	<link href="{{CSS}}materialdesignicons.css" rel="stylesheet" type="text/css">

	<link rel="stylesheet" href="{{CSS}}font-awesome.css"/>
	<link href="{{CSS}}sweetalert.css" rel="stylesheet" type="text/css">

	@yield('header_scripts')

</head>

<?php

$class = '';

if(!isset($right_bar))

$class = 'no-right-sidebar';

$block_class = '';

if(isset($block_navigation))

$block_class = 'non-clickable';

?>

<?php
$settings = \App\Settings::where('key', 'module')->first(['settings_data']);
$settings = json_decode($settings->settings_data);
$total   = 0;
if($settings->push_notifications->value == 1){$total+=\App\user_notifications::get_new_count();}
$available_types = App\Settings::getMassages();
$current_user =     Auth::user();
if($settings->messaging->value == 1 && in_array($current_user->role_id,$available_types)){$total+=Auth::user()->newThreadsCount();}
?>

<body ng-app="academia" >

	<div id="wrapper" class="{{$class}}">

		<!-- Navigation -->

		<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">

			<!-- Brand and toggle get grouped for better mobile display -->

			<div class="navbar-header">

				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>

				<a class="navbar-brand" href="{{PREFIX}}"><img src="{{IMAGE_PATH_SETTINGS.getSetting('site_logo', 'site_settings')}}" alt="{{getSetting('site_title','site_settings')}}"></a>

			</div>

			<!-- Top Menu Items -->

			<ul class="nav navbar-right top-nav">
				<li class="dropdown profile-menu">

					<div class="dropdown-toggle top-profile-menu" data-toggle="dropdown">

						@if(Auth::check())
						@if($settings->push_notifications->value == 1 || ($settings->messaging->value == 1 && in_array($current_user->role_id,$available_types)))
						<h6 class="badge badge-success">{{ $total }}</h6>
						@endif

						<div class="username">

							<h2>{{Auth::user()->name}}</h2>

						</div>

						@endif

						<div class="profile-img"> <img src="{{ getProfilePath(Auth::user()->image, 'thumb') }}" alt=""> </div>

						<div class="mdi mdi-menu-down"></div>

					</div>

					<ul class="dropdown-menu">

						<li>

							<a href="{{URL_USERS_EDIT.Auth::user()->slug}}">

								<sapn><i class="fa fa-user" aria-hidden="true"></i> {{ getPhrase('my_profile') }}</sapn>

							</a>

						</li>


						@if($settings->push_notifications->value == 1)
						<li>
							<a href="{{URL_NOTIFICATIONS}}">
								<sapn><i class="fa fa-bell-o" aria-hidden="true"></i>
									<h6 class="badge badge-success">{{ \App\user_notifications::get_new_count() }}</h6>
									{{ getPhrase('notifications') }}
								</sapn>
							</a>
						</li>
						@endif
						@if($settings->messaging->value == 1 && in_array($current_user->role_id,$available_types))
						<li>
							<a href="{{URL_MESSAGES}}"><span><i class="fa fa-comments-o" aria-hidden="true"><h6
								class="badge badge-success">{{$count = Auth::user()->newThreadsCount()}}</h6></i></span>
								{{ getPhrase('messages')}} </a>
							</li>
							@endif


							<li>

								<a href="{{URL_USERS_CHANGE_PASSWORD.Auth::user()->slug}}">

									<sapn><i class="fa fa-key" aria-hidden="true"></i> {{ getPhrase('change_password') }}</sapn>

								</a>

							</li>

							<?php $messages_module = FALSE;
							$message_settings = getSetting('messaging_system_for','messaging_system');

							if($message_settings=='all')
							{
								$messages_module = TRUE;
							}
							?>
							@if($messages_module)
							<li>
								<a href="{{URL_MESSAGES}}">
									<sapn><i class="fa fa-comments-o" aria-hidden="true"></i> {{ getPhrase('messages')}}</sapn>
								</a>
							</li>
							@endif

							<li>

								<a href="{{URL_USERS_SETTINGS.Auth::user()->slug}}">

									<sapn><i class="icon-settings"></i> {{ getPhrase('settings') }}</sapn>

								</a>

							</li>


							<li>

								<a href="{{URL_FEEDBACK_SEND}}">

									<sapn><i class="fa fa-commenting-o" aria-hidden="true"></i> {{ getPhrase('feedback') }}</sapn>

								</a>

							</li>
							@if(Session::has('restore_slug') && Session::get('restore_slug') !=null )
								<li> 
								<a href="{{URL_USERS_SWITCH_ADMIN.Auth::user()->slug}}">

									<sapn><i class="fa fa-sign-out" aria-hidden="true"></i> {{ getPhrase('back_to_admin') }}</sapn>

								</a> 
								</li>
							@endif
							<li>

								<a href="{{URL_USERS_LOGOUT}}">

									<sapn><i class="fa fa-sign-out" aria-hidden="true"></i> {{ getPhrase('logout') }}</sapn>

								</a>

							</li>

						</ul>

					</li>

				</ul>

				<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->

				<!-- /.navbar-collapse -->

			</nav>

			@if(env('DEMO_MODE'))
			<div class="alert alert-info demo-alert">
				&nbsp;&nbsp;&nbsp;<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>{{getPhrase('info')}}!</strong> CRUD {{getPhrase('operations_are_disabled_in_demo_version')}}
			</div>
			@endif

			<aside class="left-sidebar">

				<div class="collapse navbar-collapse navbar-ex1-collapse">

					<ul class="nav navbar-nav side-nav">

						<li {{ isActive($active_class, 'dashboard') }}>

							<a href="{{PREFIX}}">

								<i class="fa fa-home"></i> {{ getPhrase('dashboard') }}

							</a>

						</li>



						<li {{ isActive($active_class, 'children') }} >



							<a data-toggle="collapse" data-target="#children" href="{{URL_PARENT_CHILDREN}}"><i class=" fa fa-users" ></i>

								{{ getPhrase('children') }} </a>

							</li>

							<li {{ isActive($active_class, 'analysis') }} >

								<a href="{{URL_PARENT_ANALYSIS_FOR_STUDENTS}}">
									<i class="fa fa-bar-chart" aria-hidden="true"></i>

									{{ getPhrase('analysis') }} </a>

								</li>
								<!-- hamdy
								    <li {{ isActive($active_class, 'homeworks') }} >
									    <a href="{{URL_HOMEWORK_PARENT}}">
										<i class="fa fa-briefcase"></i>{{ getPhrase('Homeworks') }}</a>
										</li>
										@if(Module_state('exams'))
										<li {{ isActive($active_class, 'exams') }} >

											<a data-toggle="collapse" data-target="#exams" href="{{URL_STUDENT_EXAM_CATEGORIES}}"><i class="fa fa-pencil-square-o" ></i>

												{{ getPhrase('exams') }} </a> 
												<!-- <ul id="exams" class="collapse sidemenu-dropdown">

												<li><a href="{{URL_STUDENT_EXAM_CATEGORIES}}"> <i class="fa fa-random"></i>{{ getPhrase('exam_categories') }}</a></li>

												<li><a href="{{URL_STUDENT_EXAM_SERIES_LIST}}"> <i class="fa fa-list-ol"></i>{{ getPhrase('exam_series') }}</a></li>
												<li><a href="{{URL_STUDENT_EXAM_OFFLINE_EXAMS}}"> <i class="fa fa-sort-amount-asc" aria-hidden="true"></i> {{ getPhrase('offline_exams_categories')}}
											</a></li>
										</ul> 
									</li>
									@endif
								
									@if(Module_state('management_of_educational_content'))
									<li {{ isActive($active_class, 'lms') }} >
										<a  href="{{ URL_STUDENT_LMS_CATEGORIES }}"><i class="fa fa-leanpub" aria-hidden="true"></i>

											{{ getPhrase('lms') }}</a>



											<!-- <ul id="lms" class="collapse sidemenu-dropdown">

											<li><a href="{{ URL_STUDENT_LMS_CATEGORIES }}"> <i class="fa fa-random"></i>{{ getPhrase('categories') }}</a></li>

											<li><a href="{{ URL_STUDENT_LMS_SERIES }}"> <i class="fa fa-list-ol"></i>{{ getPhrase('series') }}</a></li>

										</ul> -->

								<!-- hamdy	</li>
									@endif
	-->
									@if($settings->attendance_and_departure->value == 1)
									<li {{ isActive($active_class, 'Automatic_call') }}>
										<a  href="{{url('parent/autocall')}}"><i class="fa fa-assistive-listening-systems" ></i>
											{{ getPhrase('Automatic_call') }} </a>
										</li>
										@endif

										<li {{ isActive($active_class, 'academic_expenses') }}>
											<a  href="{{url('parent/purchase-expenses/all/')}}"><i class="fa fa-credit-card" ></i>
												{{ getPhrase('academic_expenses') }} </a>
											</li>

											<li {{ isActive($active_class, 'subscriptions') }} >
												<a  href="{{URL_PAYMENTS_LIST.Auth::user()->slug}}"><i class="fa fa-credit-card" ></i>
													{{ getPhrase('subscriptions') }} </a>
												</li>
												@if($messages_module)
												<li {{ isActive($active_class, 'messages') }} >

													<a  href="{{URL_MESSAGES}}"><span><i class="fa fa-comments-o fa-2x" aria-hidden="true"><h5 class="badge badge-success">{{$count = Auth::user()->newThreadsCount()}}</h5></i></span>
														{{ getPhrase('messages')}} </a>


														@endif


														<li {{ isActive($active_class, 'notifications') }} >

															<a href="{{URL_NOTIFICATIONS}}" ><i class="fa fa-bell-o" aria-hidden="true"></i>

																{{ getPhrase('notifications') }} </a>



															</li>

														</ul>

													</div>

												</aside>

												@if(isset($right_bar))



												<aside class="right-sidebar" id="rightSidebar">

													<button class="sidebat-toggle" id="sidebarToggle" href='javascript:'><i class="mdi mdi-menu"></i></button>

													<div class="panel panel-right-sidebar">

														<?php $data = '';

														if(isset($right_bar_data))

														$data = $right_bar_data;

														?>

														@include($right_bar_path, array('data' => $data))

													</div>

												</aside>

												@endif

												@yield('content')

											</div>

											<!-- /#wrapper -->

											<!-- jQuery -->

											<script src="{{JS}}jquery-1.12.1.min.js"></script>



											<!-- Bootstrap Core JavaScript -->

											<script src="{{JS}}bootstrap.min.js"></script>

											<script src="{{JS}}main.js"></script>

											<script src="{{JS}}sweetalert-dev.js"></script>

											@yield('footer_scripts')

											@include('errors.formMessages')

											{!!getSetting('google_analytics', 'seo_settings')!!}
										</body>



										</html>
