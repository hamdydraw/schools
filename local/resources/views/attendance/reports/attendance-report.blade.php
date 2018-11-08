@extends($layout)

@section('header_scripts')

@stop

<link rel="stylesheet" href="{{PREFIX}}css/bootstrap-datepicker.min.css">
@section('content')
<div id="page-wrapper" ng-controller="TabController">
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


    {!! Form::open(array('url' => URL_REPORT_TABLE, 'method' => 'POST', 'name'=>'htmlform ','target'=>'_blank', 'id'=>'htmlform', 'novalidate'=>'')) !!}
    <div id="wes"></div>
    <div class="panel panel-custom">
      <div class="panel-heading">
        <h1>
          {{getPhrase('select_details')}}

        </h1>
      </div>
      <div class="panel-body instruction">
        @include('common.year-selection-view', array('class'=>'custom-row-6'))
        <div class="row">
          <div class="col-sm-6">
            <label for="date_of_birth">{{getPhrase('starting_date')}}</label>
            <span class="text-red">*</span>
            <div id="dpStart" class="input-group date" data-date-viewmode="years" data-provide="datepicker" data-date-format="yyyy/mm/dd">
              <input class="form-control" ng-model="date_of_start" ng-change="doCall()" placeholder="2018/7/17" id="dp" name="date_of_start" type="text" value="2018/7/17">
              <div class="input-group-addon">
                <span class="mdi mdi-calendar"></span>
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <label for="date_of_birth">{{getPhrase('finishing_date')}}</label>
            <span class="text-red">*</span>
            <div id="dpFinish" class="input-group date" data-date-viewmode="years" data-provide="datepicker" data-date-format="yyyy/mm/dd">
              <input class="form-control" ng-model="date_of_finish" ng-change="doCall()" placeholder="2018/7/17" id="dp" name="date_of_end" type="text" value="2018/7/17">
              <div class="input-group-addon">
                <span class="mdi mdi-calendar"></span>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <div class="row">
          <div class="buttons text-center">
            <button type="submit" ng-click="start_report()" ng-disabled = "!date_of_start || !date_of_finish || !isNumber(semisters.current_semister)" class="btn btn-lg btn-primary">{{getPhrase('view_report')}}</button>
          </div>
        </div>


        <div ng-show="result_data.length>0" class="row">

          <div class="col-sm-4 col-sm-offset-8">
            <div class="input-group">
              <input type="text" ng-model="search" class="form-control input-lg"
              placeholder="{{getPhrase('search')}}" name="search"/>
              <span class="input-group-btn">
                <button class="btn btn-primary btn-lg" type="button">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </span>
            </div>
          </div>
        </div>
        <br>

        <div ng-if="result_data.length!=0">
          <div>
            <div class="row">
              <div class="col-md-3">

                {{getPhrase('add_total_blank_columns')}}:


                <input type="number" name="extracols" id="extracols" ng-model="total_blank_columns"
                ng-change="addColumns(total_blank_columns)" class="form-control "
                ng-init="total_blank_columns=1;addColumns(1); " value="1">
              </div>
            </div>

            <br>
            <br>


            <div class="row vertical-scroll">

              <h4 ng-if="result_data[0].course_dueration<=1" style="text-align: center;">
                <u>@{{class_title}}</u></h4>
                <h4 ng-if="result_data[0].course_dueration>1" style="text-align: center;">
                  <u>@{{class_title_yer_sem}}</u></h4>

                  <table class="table table-bordered" style="border-collapse: collapse;">
                    <thead>
                      <th style="border:1px solid #000;text-align: center;"><b>{{getPhrase('sn')}}</b>
                      </th>
                      <th style="border:1px solid #000;text-align: center;"><b>{{getPhrase('name')}}</b>
                      </th>

                      <th style="border:1px solid #000;text-align: center;">
                        <b>{{getPhrase('roll_no')}}</b></th>
                        <th style="border:1px solid #000;text-align: center;"><b>{{getPhrase('course')}}</b>
                        </th>
                        <th style="border:1px solid #000;text-align: center;"
                        ng-repeat="col in blank_columns"></th>


                      </thead>
                      <tbody>

                        <tr ng-repeat="user in result_data | filter:search track by $index">


                          <td style="border:1px solid #000;text-align: center;">@{{$index+1}}</td>
                          <td style="border:1px solid #000;text-align: center;"><a target="_blank"
                            href="{{URL_USER_DETAILS}}@{{user.slug}}">@{{user.name}}</a>
                          </td>

                          <td style="border:1px solid #000;text-align: center;">@{{user.roll_no}}</td>
                          <td style="border:1px solid #000;text-align: center;">@{{user.course_title}}</td>
                          <td style="border:1px solid #000;text-align: center;"
                          ng-repeat="col in blank_columns">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>


                      </tr>

                    </tbody>
                  </table>
                </div>
              </div>

              <div ng-if="result_data.length==0" class="text-center">{{getPhrase('no_data_available')}}</div>
              <br>
              <a ng-if="result_data.length!=0" class="btn btn-primary"
              ng-click="printIt()">{{getPhrase('print')}}</a>
              <a ng-if="result_data.length!=0" class="btn btn-primary"
              ng-click="downlaodIt()">{{getPhrase('export')}} Excel</a>
            </div>
          </div>


        </hr>
      </div>
    </div>
  </div>
</div>


{!! Form::close() !!}

@stop



@section('footer_scripts')
<script src="{{PREFIX}}js/moment.min.js"></script>
<script src="{{PREFIX}}js/bootstrap-datepicker.js"></script>
<script src="{{PREFIX}}js/bootstrap-datetimepicker.js"></script>
<script>
    $('.date').on('changeDate', function(ev){
        $(this).datepicker('hide');
    });
</script>

@include('attendance.reports.scripts.report-script')

@stop
