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
							<li><a href="{{url('/')}}"><i class="mdi mdi-home"></i></a> </li>
							<li>{{ $title }}</li>
						</ol>
					</div>
				</div>

				<!-- /.row -->
				<div class="panel panel-custom">
					<div class="panel-heading">


						<h1>{{ $title }}</h1>
					</div>
					<div class="panel-body packages">
						<div >
						<table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
							<thead>
								<tr>
								 	<th>{{ getPhrase('request_date')}}</th>
									<th>{{ getPhrase('leave_time')}}</th>
                  <th>{{ getPhrase('automatic_call_times')}}</th>
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

 <?php $url = url('parent/autocallrequests').'/'.$student_id.'/'.$user->slug;

  ?>
@section('footer_scripts')
  @include('automaticcall.js-script')
  @include('common.datatables', array('route'=>$url, 'route_as_url' => TRUE))

@stop
