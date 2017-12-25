@extends('layouts.admin.adminlayout')

@section('header_scripts')

<link href="//cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

@stop

@section('content')


<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->

				<div class="row">

					<div class="col-lg-12">

						<ol class="breadcrumb">

							<li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a> </li>
							
							<li><a  href="{{URL_SETTINGS_DASHBOARD}}">{{ getPhrase('master_settings')}}</a></li>

							<li>{{ $title }}</li>

						</ol>

					</div>

				</div>

								

				<!-- /.row -->

				<div class="panel panel-custom">

					<div class="panel-heading">

						

						<div class="pull-right messages-buttons">

							 

							<a href="{{URL_MASTERSETTINGS_CERTIFICATE_TEMPLATES_ADD}}" class="btn  btn-primary button" >{{ getPhrase('create')}}</a>

							 

						</div>

						<h1>{{ $title }}</h1>

					</div>

					<div class="panel-body packages">

						<div class="table-responsive"> 

						<table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">

							<thead>

								<tr>

									 

									<th>{{ getPhrase('title')}}</th>

									<th>{{ getPhrase('subject')}}</th>

									<th>{{ getPhrase('type')}}</th>
									
                                    <th>{{ getPhrase('action')}}</th>

								  

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

  

 @include('common.datatables', array('route'=>'certificate_templates.dataTable'))

 @include('common.deletescript', array('route'=>URL_MASTERSETTINGS_CERTIFICATE_TEMPLATES_DELETE))



@stop

