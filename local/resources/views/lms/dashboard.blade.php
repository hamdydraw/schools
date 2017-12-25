@extends($layout)
@section('content')

<div id="page-wrapper">
			<div class="container-fluid">
			<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							 <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a> </li>
							 <li>{{ $title}}</li>
						</ol>
					</div>
				</div>

				 <div class="row">
					<div class="col-md-3">
						<div class="card card-blue text-xs-center helper_step1">
							<div class="card-block">
					  <h4 class="card-title">
					  <i class="fa fa-random"></i>
					  </h4>

								<p class="card-text">{{ getPhrase('lms_categories')}}</p>
							</div>
							<a class="card-footer text-muted"
							href="{{URL_LMS_CATEGORIES}}">
								{{ getPhrase('view_all')}}
							</a>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card card-green text-xs-center helper_step2">
							<div class="card-block">
					  <h4 class="card-title">
					  	<h4 class="card-title">
								<i class="fa fa-server" aria-hidden="true"></i>

					  </h4>

								<p class="card-text">{{ getPhrase('lms_contents')}}</p>
							</div>
							<a class="card-footer text-muted"
							href="{{URL_LMS_CONTENT}}">
								{{ getPhrase('view_all')}}
							</a>
						</div>
					</div>
                   <div class="col-md-3">
						<div class="card card-yellow text-xs-center helper_step3">
							<div class="card-block">
							<h4 class="card-title">

						<i class="fa fa-list-ol"></i>
							</h4>
								<p class="card-text">{{ getPhrase('lms_series')}}</p>
							</div>
							<a class="card-footer text-muted"
							href="{{URL_LMS_SERIES}}">
								{{ getPhrase('view_all')}}
							</a>
						</div>
					</div>
@stop

@section('footer_scripts')

@stop
