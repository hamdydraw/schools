@extends($layout)
@section('header_scripts')
<link href="{{CSS}}ajax-datatables.css" rel="stylesheet">
@stop
@section('content')


<div id="page-wrapper">
			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a> </li>
							<li>{{ $title }}</li>
						</ol>
					</div>
				</div>
								
				<!-- /.row -->
				<div class="panel panel-custom">
					<div class="panel-heading">
						
						<div class="pull-right messages-buttons">
							 
							<a href="{{URL_MASTERSETTINGS_COURSE_SUBJECTS_ADD}}" class="btn  btn-primary button" >{{ getPhrase('create')}}</a>
							 
						</div>
						<h1>{{ $title }}</h1>
					</div>
					<div class="panel-body packages">
						<div class="table-responsive"> 
						<table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
							<thead>
								<tr>
									 
									<th>{{ getPhrase('academic_year')}}</th>
									<th>{{ getPhrase('branch')}}</th>
									<th>{{ getPhrase('course')}}</th>
									<th>{{ getPhrase('action')}}</th>
								</tr>
							</thead>
							 
						</table>
						{{csrf_field()}}
						</div>

					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
@endsection
 

@section('footer_scripts')
	<script src="{{JS}}angular.js"></script>
	<script src="{{JS}}scripts/courseSubjects.js"></script>

 @include('common.datatables', array('route'=>'course-subjects.dataTable'))

@stop
