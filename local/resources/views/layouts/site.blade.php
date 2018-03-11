<!DOCTYPE html>

<html lang="en" dir="{{ (App\Language::isDefaultLanuageRtl()) ? 'rtl' : 'ltr' }}">

<head>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="description" content="{{getSetting('meta_description', 'seo_settings')}}">

	<meta name="keywords" content="{{getSetting('meta_keywords', 'seo_settings')}}">

	 

	<link rel="icon" href="{{IMAGE_PATH_SETTINGS.getSetting('site_favicon', 'site_settings')}}" type="image/x-icon" />

	<title>{{ isset($title) ? $title : getSetting('site_title','site_settings') }}</title>



	@yield('header_scripts')

	<!-- Bootstrap Core CSS -->

	@if(Session::has('lang_dir') && Session::get('lang_dir') == 0 )
		<link href="{{CSS}}bootstrap_en.min.css" rel="stylesheet">
		<link href="{{CSS}}{{\App\Settings::get_default_theme()}}-theme-en.css" rel="stylesheet">
	@else
		<link href="{{CSS}}bootstrap.min.css" rel="stylesheet">
		<link href="{{CSS}}{{\App\Settings::get_default_theme()}}-theme.css" rel="stylesheet">
@endif

	<!-- Morris Charts CSS -->

	<link href="{{CSS}}plugins/morris.css" rel="stylesheet">

	<!-- Proxima Nova Fonts CSS -->

	<link href="{{CSS}}proximanova.css" rel="stylesheet">

	<!-- Custom Fonts -->

	<link href="{{CSS}}custom-fonts.css" rel="stylesheet" type="text/css">

	<link href="{{CSS}}materialdesignicons.css" rel="stylesheet" type="text/css">

	<link href="{{FONTAWSOME}}font-awesome.css" rel="stylesheet" type="text/css">

	<link href="{{CSS}}sweetalert.css" rel="stylesheet" type="text/css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

	<!--[if lt IE 9]>

	<script src="{{JS}}html5shiv.js"></script>

	<script src="{{JS}}respond.min.js"></script>

    <![endif]-->



</head>

{{-- class="login-screen" background="bgimage.jpg" --}}

<body class="login-screen" background="{{IMAGE_PATH_SETTINGS.getSetting('background_image','site_settings')}}" ng-app="academia" >

@yield('content')

	<!-- /#wrapper -->

		<!-- jQuery -->

		<script src="{{JS}}jquery-1.12.1.min.js?s=<?php echo mt_rand()?>"></script>



		<!-- Bootstrap Core JavaScript -->

		<script src="{{JS}}bootstrap.min.js?s=<?php echo mt_rand()?>"></script>


		<script src="{{JS}}main.js?s=<?php echo mt_rand()?>"></script>

		<script src="{{JS}}sweetalert-dev.js?s=<?php echo mt_rand()?>"></script>

		@include('errors.formMessages')

		@yield('footer_scripts')
		
		{!!getSetting('google_analytics', 'seo_settings')!!}
</body>



</html>