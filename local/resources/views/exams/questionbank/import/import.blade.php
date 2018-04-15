@extends($layout)

@section('content')
<div id="page-wrapper">
			<div class="container-fluid">
				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a> </li>
							@if(checkRole(getUserGrade(2)))
							<li><a href="{{URL_QUIZ_QUESTIONBANK}}">{{ getPhrase('questions')}}</a> </li>
							<li class="active">{{isset($title) ? $title : ''}}</li>
							@else
							<li class="active">{{$title}}</li>
							@endif
						</ol>
					</div>
				</div>
					@include('errors.errors')
				<!-- /.row -->
				
				<div class="panel panel-custom col-lg-6 col-lg-offset-3" style="width: 100%">
					<div class="panel-heading">
					@if(checkRole(getUserGrade(2))) 
						<div class="pull-right messages-buttons">
							 
							<a href="{{URL_QUIZ_QUESTIONBANK}}" class="btn  btn-primary button helper_step1" >{{ getPhrase('list')}}</a>
							 
						</div>
						@endif
					<h1>{{ $title }}  </h1>
					</div>

					<div class="panel-body text-center" ng-controller="importTopicCtrl">

						<fieldset class="form-group col-md-3">
							<label for="">{{getPhrase('academic_year')}}</label>
							<span class="text-red">*</span>
							<select name="year" class="form-control"  required="required" ng-model="current_year_sc" ng-change="getSubjects()">
								<option  ng-repeat="year in academic_years_sc" value="@{{ year.id }}">@{{ year.academic_year_title }}</option>
							</select>
						</fieldset>

						<fieldset class="form-group col-md-3">
							<label for="">{{getPhrase('Semester')}}</label>
							<span class="text-red">*</span>
							<select name="semesters" class="form-control" required="required" ng-model="current_sem_sc" ng-change="getSubjects()">
								<option ng-repeat="sem in academic_sems_sc" id="@{{ sem.value }}" value="@{{ sem.value }}"> @{{ sem.title  }}</option>
							</select>
						</fieldset>

						<fieldset class="form-group col-md-3">
							<label for="">{{getPhrase('branch')}}</label>
							<span class="text-red">*</span>
							<select name="course_id" class="form-control" required="required" ng-model="current_course_sc" ng-change="getSubjects()">
								<option ng-repeat="course in academic_courses_sc" value="@{{ course.id }}">@{{ course.course_title }}</option>
							</select>
						</fieldset>

						<fieldset class="form-group col-md-3">
							<label for="">{{getPhrase('subject')}}</label>
							<span class="text-red">*</span>
							<select name="subject_id" class="form-control" required="required" ng-model="current_subject_sc">
								<option ng-repeat="subject in academic_subjects_sc" value="@{{ subject.subject_id }}">@{{ subject.subject_title }}</option>
							</select>
						</fieldset>

						<table class='table table-bordered table-striped' ng-if="current_subject_sc">
							<thead>
							<tr>
								<th><center>academic_id</center></th>
								<th><center>semester_num</center></th>
								<th><center>course_id</center></th>
								<th><center>subject_id</center></th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>@{{ current_year_sc }}</td>
								<td>@{{ current_sem_sc }}</td>
								<td>@{{ current_course_sc }}</td>
								<td>@{{ current_subject_sc }}</td>
							</tr>
							</tbody>
						</table>
					
					<a href="{{DOWNLOAD_LINK_QUESTION_IMPORT_EXCEL}}questions_radio_template.xlsx" class="btn btn-info helper_step2">{{getPhrase('single_answer')}}
					</a>
					<a href="{{DOWNLOAD_LINK_QUESTION_IMPORT_EXCEL}}questions_checkbox_template.xlsx" class="btn btn-info helper_step3">{{getPhrase('multi_answer')}}
					</a>
					<a href="{{DOWNLOAD_LINK_QUESTION_IMPORT_EXCEL}}questions_blanks_template.xlsx" class="btn btn-info helper_step4">{{getPhrase('fill_the_blanks')}}
					</a>
				 
							<?php $button_name = getPhrase('upload'); ?>
					
						{!! Form::open(array('url' => URL_QUESTIONBAMK_IMPORT, 'method' => 'POST', 'novalidate'=>'','name'=>'formUsers ', 'files'=>'true')) !!}
					<?php $button_name = getPhrase('upload'); 
					// $question_types = array();
					$question_types 		= array( ''              => 'Select',
                                        'radio'         => 'Single Answer',
                                        'checkbox'      => 'Multi Answer',
                                        'blanks'        => 'Fill in blanks');

					?>
					 	<div class="row">
						<fieldset class='col-sm-4 col-sm-offset-4 form-group margintop30'>
						{{ Form::label('question_type', getphrase('question_type')) }}
						{{Form::select('question_type',$question_types , null, ['class'=>'form-control', "id"=>"question_type", "ng-model"=>"question_type" , 'required'=> 'true'])}}
						{!! Form::open(array('url' => URL_QUESTIONBAMK_IMPORT, 'method' => 'POST', 'novalidate'=>'','name'=>'formUsers ', 'files'=>'true')) !!}
						</fieldset>
				 
					<fieldset ng-if="question_type" class='col-sm-4 col-sm-offset-4 form-group margintop30'>
	
					{!! Form::file('excel', array('class'=>'form-control','id'=>'excel_input', 'accept'=>'.xls,.xlsx')) !!}
					 
					</fieldset>
					  </div>
					
						<div ng-if="question_type"  class="buttons text-center">
							<button class="btn btn-lg btn-success button" 
							ng-disabled='!formUsers.$valid'>{{ $button_name }}</button>
						</div>

					 
					{!! Form::close() !!}
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->
@endsection

@section('footer_scripts')
 @include('common.validations')
   @include('common.alertify')
 @include('mastersettings.topics.import.import-script')
 <script>
 	var file = document.getElementById('excel_input');

file.onchange = function(e){
    var ext = this.value.match(/\.([^\.]+)$/)[1];
    switch(ext)
    {
        case 'xls':
        case 'xlsx':
            
            break;
        default:
            alertify.error("{{getPhrase('file_type_not_allowed')}}");
            this.value='';
    }
};
 </script>
@stop