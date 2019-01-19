@extends($layout)

@section('header_scripts')

@stop

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


            {!! Form::open(array('url' => URL_PRINT_COURSE_COMPLETED_STUDENT_LIST, 'method' => 'POST', 'name'=>'htmlform ','target'=>'_blank', 'id'=>'htmlform', 'novalidate'=>'')) !!}

            <div class="panel panel-custom">
                <div class="panel-heading">
                    <h1>
                        {{getPhrase('select_details')}}

                    </h1>
                </div>
                <div class="panel-body instruction">
                    <div class="row">
                        <div class="col-md-6">
                            <fieldset class="form-group">
                                <label for="">{{getPhrase('academic_year')}}</label>
                                <span class="text-red">*</span>
                                <select name="academic_id" class="form-control"  required="required" ng-model="current_year_sc" ng-change="get_sems()">
                                    <option  ng-repeat="year in academic_years_sc" value="@{{ year.id }}">@{{ year.academic_year_title }}</option>
                                </select>
                            </fieldset>
                        </div>
                        <div class="col-md-6">
                            <fieldset class="form-group">
                                <label for="">{{getPhrase('Semester')}}</label>
                                <span class="text-red">*</span>
                                <select name="current_semister" class="form-control" required="required" ng-model="current_sem_sc" ng-change="getCourses()">
                                    <option ng-repeat="sem in academic_sems_sc" id="@{{ sem.sem_num }}" value="@{{ sem.sem_num }}"> @{{ sem.title  }}</option>
                                </select>
                            </fieldset>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <fieldset class="form-group">
                                <label for="">{{getPhrase('branch')}}</label>
                                <span class="text-red">*</span>
                                <select name="course_parent_id" class="form-control" required="required"
                                        ng-model="current_course_sc" ng-change="doCall()">
                                    <option ng-repeat="course in academic_courses_sc"
                                            value="@{{ course.id }}">@{{ course.course_title }}</option>
                                </select>
                            </fieldset>
                        </div>
                    </div>


                    <hr>

                    <div ng-show="result_data.length > 0" class="row">

                        <div class="col-sm-4 col-sm-offset-8">
                            <div class="input-group">
                                <input type="text" ng-model="search" class="form-control input-lg"
                                       placeholder="{{getPhrase('search')}}" name="search"/>
                                <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                            </div>
                        </div>
                    </div>
                    <br>

                    <div ng-show="result_data.length!=0">

                        <div>
                            <a ng-click="selectAll()" class="btn btn-primary selectAll">{{ getPhrase('select_all')}}</a>
                        </div>
                        <br><br>

                        <div class="row vertical-scroll">


                            <h4 ng-if="result_data[0].course_dueration<=1" style="text-align: center;"><u>@{{class_title}}</u>
                            </h4>
                            <h4 ng-if="result_data[0].course_dueration>1" style="text-align: center;"><u>@{{class_title_yer_sem}}</u>
                            </h4>

                            <table class="table table-bordered" style="border-collapse: collapse;">
                                <thead>
                                <th style="border:1px solid #000;text-align:center;"><b>{{getPhrase('action')}}</b></th>
                                <th style="border:1px solid #000;text-align:center;"><b>{{getPhrase('sn')}}</b></th>
                                <th style="border:1px solid #000; text-align:center;"><b>{{getPhrase('name')}}</b></th>

                                <th style="border:1px solid #000;text-align:center;"><b>{{getPhrase('roll_no')}}</b>
                                </th>
                                <th style="border:1px solid #000;text-align:center;"><b>{{getPhrase('course')}}</b></th>
                                <th style="border:1px solid #000;text-align:center;"><b>{{getPhrase('status')}}</b></th>


                                </thead>
                                <tbody>

                                <tr ng-repeat="user in result_data | filter:search track by $index">

                                    <td style="border:1px solid #000;text-align:center;"><input type="checkbox"
                                                                                                id="selctionActionCompletedChecked @{{user.id}}"
                                                                                                name="reback[]"
                                                                                                value="@{{user.id}}"
                                                                                                style="display: inline !important;">
                                    </td>
                                    <td style="border:1px solid #000;text-align:center;">@{{$index+1}}</td>
                                    <td style="border:1px solid #000;text-align:center;"><a target="_blank"
                                                                                            href="{{URL_USER_DETAILS}}@{{user.slug}}">@{{user.name}}</a>
                                    </td>

                                    <td style="border:1px solid #000;text-align:center;">@{{user.roll_no}}</td>
                                    <td style="border:1px solid #000;text-align:center;">@{{user.course_title}}</td>
                                    <td style="border:1px solid #000;text-align:center;">{{getPhrase('completed')}}</td>


                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div ng-show="result_data.length==0" class="text-center">{{getPhrase('no_data_available')}}</div>
                    <br>
                    <a style="margin-right:45%;" ng-if="result_data.length!=0" class="btn btn-primary" ng-click="rebackCompleted()">{{getPhrase('reback_completed')}}</a>
                    <a ng-if="result_data.length!=0" class="btn btn-primary" ng-click="printIt()">{{getPhrase('print')}}</a>
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


    @include('student.scripts.completed-js-scripts')

@stop
