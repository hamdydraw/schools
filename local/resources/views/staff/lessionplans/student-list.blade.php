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
							<li><a href="{{URL_LESSION_PLANS_STUDENTLIST_DASHBOARD.Auth::user()->slug}}">
							{{getPhrase('students_dashboard')}}</a></li>

							 <li>{{$title}}</li>

						</ol>
					</div>
				</div>

				<!-- /.row -->
				<div class="panel panel-custom">
				  <div class="panel-heading">
				  <h1>{{$title}}</h1>
				  </div>

					<div class="panel-body packages">
						<div >
						<table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
							<thead>
								<tr>
                                    <th>{{ getPhrase('name')}}</th>
									<th>{{ getPhrase('image')}}</th>
								 	<th>{{ getPhrase('id_number')}}</th>
								 	<th>{{ getPhrase('course')}}</th>
									<th>{{ getPhrase('email')}}</th>
								</tr>
							</thead>
						</table>
						</div>
					</div>

				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
@endsection

@section('footer_scripts')
 @include('common.datatables', array('route'=>URL_LESSION_PLANS_VIEW_STUDENTS_GETLIST.$academic_id.'/'.$course_parent_id.'/'.$course_id.'/'.$year.'/'.$semister , 'route_as_url'=>true))
 @stop
