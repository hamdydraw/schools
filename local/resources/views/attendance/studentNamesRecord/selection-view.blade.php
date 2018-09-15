@extends($layout)

@section('header_scripts')
<link href="{{CSS}}bootstrap-datepicker.css" rel="stylesheet">
@stop

@section('custom_div')
<div ng-controller="TabController">
  @stop

  @section('content')
  <div id="page-wrapper">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <ol class="breadcrumb">
            <li>
              <a href="{{PREFIX}}">
                <i class="mdi mdi-home">
                </i>
              </a>
            </li>

            <li>
              <a href="{{URL_ACADEMICOPERATIONS_DASHBOARD}}">
                {{getPhrase('academic_operations')}}
              </a>
            </li>
            <li>

              {{$title}}

            </li>
          </ol>
        </div>
      </div>

      <div class="panel panel-custom">
        <div class="panel-heading">
          <h1>
            {{getPhrase('select_details')}}

          </h1>
        </div>
        <div class="panel-body instruction">
          <div class="row">
            <div class="col-md-12">

              @include('common.year-selection-view', array('class'=>'custom-row-3'))
            </div>

  </div>
  <hr>
  <br><br>
  <div class="table-responsive vertical-scroll">
    <table class="table" id="table">
      <thead>
        <th>{{getPhrase('image')}}</th>
        <th>{{getPhrase('name')}}</th>
        <th>{{getPhrase('student_record')}}</th>
        <th>{{getPhrase('New_name_record')}}</th>
        <th></th>
        <th>{{getPhrase('action')}}</th>
      </thead>
      <tbody>
        <tr ng-init="init(user.student_audio)" ng-repeat="user in result_data" ng-controller="recorderController">
          <td>
            <img ng-if="user.image!=null && user.image!=''" class="thumb"
            src="{{IMAGE_PATH_PROFILE}}@{{user.image}}" height="60">

            <img ng-if="user.image==null || user.image==''" class="thumb"
            src="{{IMAGE_PATH_USERS_DEFAULT_THUMB}}">
          </td>
          <td>@{{user.name}}</td>
          <td>
          <div ng-show="!hasRecord">
          <a ng-click="play(user.id)" ng-show="!isPlaying"><span class="glyphicon glyphicon-play">{{getPhrase('Play')}}</a>
            <a ng-click="pause()" ng-show="isPlaying"> <span class="glyphicon glyphicon-pause">{{getPhrase('Pause')}}</a>
              </div>
            </td>
          <td>
              <button id="recordButton@{{user.id}}" ng-click="startRecording(user.id)" ng-disabled="record" class="btn btn-info btn-small"> <span class="glyphicon glyphicon-play"></span>{{getPhrase('Record')}} </button>
              <button id="stopButton@{{user.id}}" ng-click="stopRecording(user.id)" ng-disabled="!record" class="btn btn-info btn-small"><span class="glyphicon glyphicon-pause"></span>{{getPhrase('Stop')}}</button>
          </td>
          <td><div id="record@{{user.id}}"></div>
            <div id="save@{{user.id}}"></div>
          </td>
           <td><button ng-click="deleteRecord(user.id)" class="btn btn-danger deleteExpenses" ng-disabled="hasRecord">{{getPhrase('delete')}}</button></td>
          </tr>
        </tbody>
      </table>
    </div>

    <div ng-if="result_data.length==0" class="text-center">{{getPhrase('no_data_available')}}</div>
    <br>
  </div>
</div>

</hr>
</div>
</div>
</div>



{!! Form::close() !!}


@stop

@section('custom_div_end')
</div>
@stop
@section('footer_scripts')


@include('student-promotions.scripts.js-scripts')
@include('attendance.studentNamesRecord.js-scripts')



@stop
