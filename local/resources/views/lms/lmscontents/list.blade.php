@extends('layouts.admin.adminlayout')
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
							<li><a  href="{{URL_LMS_DASHBOARD}}">{{getPhrase('LMS')}} {{ getPhrase('dashboard')}}</a></li>
							<li>{{ $title }}</li>
						</ol>
					</div>
				</div>

				<!-- /.row -->
				<div class="panel panel-custom">
					<div class="panel-heading">

						<div class="pull-right messages-buttons">
							<a href="{{URL_LMS_CONTENT_ADD}}" class="btn  btn-primary button helper_step1" >{{ getPhrase('create')}}</a>
						</div>
						<h1>{{ $title }}</h1>
					</div>
					<div class="panel-body packages">
						<div >
						<table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>{{ getPhrase('title')}}</th>
									<th>{{ getPhrase('image')}}</th>
									<th>{{ getPhrase('type')}}</th>
									<th>{{ getPhrase('subject')}}</th>
									<th>{{ getPhrase("created_by")}}</th>
									<th>{{ getPhrase("updated_by")}}</th>
									<th>{{ getPhrase('creator_ip')}}</th>
									<th>{{ getPhrase('updater_ip')}}</th>
									<th id="helper_step2">{{ getPhrase('action')}}</th>
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

 @include('common.datatables', array('route'=>'lmscontent.dataTable'))
 @include('common.deletescript', array('route'=>URL_LMS_CONTENT_DELETE))

@stop
