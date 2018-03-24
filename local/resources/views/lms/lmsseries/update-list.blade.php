@extends(getLayout())

 @section('custom_div')

 <div ng-controller="prepareQuestions">

 @stop

@section('content')

<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->

				<div class="row">

					<div class="col-lg-12">

						<ol class="breadcrumb">

							<li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a> </li>
							<li><a  href="{{URL_LMS_DASHBOARD}}">{{getPhrase('lms')}} {{ getPhrase('dashboard')}}</a></li>

							<li><a href="{{URL_LMS_SERIES}}">{{getPhrase('lms')}} {{ getPhrase('series')}}</a></li>

							<li class="active">{{isset($title) ? $title : ''}}</li>

						</ol>

					</div>

				</div>

					@include('errors.errors')

				<?php $settings = ($record) ? $settings : ''; ?>

				<div class="panel panel-custom" ng-init="initAngData({{$settings}});" >

					<div class="panel-heading">

						<div class="pull-right messages-buttons">

							<a href="{{URL_LMS_SERIES}}" class="btn  btn-primary button" >{{ getPhrase('list')}}</a>

						</div>

					<h1>{{ $title }}  </h1>

					</div>

					<div class="panel-body" >

					<?php $button_name = getPhrase('create'); ?>

					 		<div class="row">

							<fieldset class="form-group col-md-6">

								{{ Form::label('lms_categories', getphrase('select_subject')) }}



								{{Form::select('lms_categories', $categories, null, ['class'=>'form-control', 'ng-model' => 'category_id',

								'placeholder' => 'Select', 'ng-change'=>'categoryChanged(category_id)' ])}}

							</fieldset>

						<?php $lmssettings = getSettings('lms');?>

							<fieldset class="form-group col-md-6">

								{{ Form::label('file_type', getphrase('file_type')) }}



								{{Form::select('file_type', $lmssettings->content_types, null, ['class'=>'form-control', 'ng-model' => 'content_type',

								'placeholder' => getPhrase('Select')  ])}}

							</fieldset>


								<div class="col-md-12">

							<div ng-if="examSeries!=''" class="vertical-scroll" >



								<h4 ng-if="categoryItems.length>0" class="text-success">{{getPhrase('total_items')}}: @{{ categoryItems.length}} </h4>



								<table

								  class="table table-hover">

  									<th>{{getPhrase('title')}}</th>

									<th>{{getPhrase('code')}}</th>

									<th>{{getPhrase('type')}}</th>

                                    <th>{{getPhrase('action')}}</th>

									<tr ng-repeat="item in categoryItems | filter : {content_type: content_type} | filter:search_term  track by $index">

										<td

										title="@{{item.title}}" >

										@{{item.title}}

										</td>

										<td>@{{item.code}}</td>

										<td>@{{item.content_type}}</td>
                                        </td>

										<td><a

										ng-click="addToBag(item);" class="btn btn-primary" >{{getPhrase('add')}}</a>

									  	</td>

									</tr>

								</table>

								</div>

							</div>

					 		</div>

					</div>

                  </div>

			</div>

			<!-- /.container-fluid -->

		</div>

		<!-- /#page-wrapper -->

@stop

@section('footer_scripts')

@include('lms.lmsseries.scripts.js-scripts')

@stop

@section('custom_div_end')

 </div>

@stop
