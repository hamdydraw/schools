@extends($layout)

@section('header_scripts')

@stop

@section('content')
    <div id="page-wrapper" ng-controller="MarksController" ng-init="getStudentMarks112()">
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
                            <a href="">
                                {{getPhrase('teacher_students_marks')}}
                            </a>
                        </li>

                        <li>
                            {{$slug->name.getPhrase('students_marks')}}
                        </li>
                    </ol>
                </div>
            </div>
            {!! Form::open(array('url' => 'supervisor/staff/print-students-marks/'.$slug, 'method' => 'POST', 'name'=>'htmlform ','target'=>'_blank', 'id'=>'htmlform', 'novalidate'=>'')) !!}

            <div class="panel panel-custom">
                <div class="panel-body instruction">

                    <?php
                    $user = Auth::user();

                    $role_name = getRoleData($user->role_id);

                    $param = array('class'=>'custom-row-6');
                    if($role_name=='student') {

                        $param = array('user_slug'=>$user->slug,
                            'class'=>'custom-row-6');
                    }
                    ?>

                    <hr>

                    <div ng-show="result_data.length>0" class="row">

                        <div class="col-sm-4 col-sm-offset-8">
                            <div class="input-group">
                                <input type="text" ng-model="search" class="form-control input-lg" placeholder="{{getPhrase('search')}}" name="search" />
                                <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                            </div>
                        </div>
                    </div>
                    <br>

                    <div class="row vertical-scroll">
                        <h4 ng-if="result_data.students.length>0" >@{{course_title}}</h4>
                        <table ng-if="result_data.students.length>0" class="table table-bordered" style="border-collapse: collapse;">
                            <thead>
                            <th style="border:1px solid #000;">{{getPhrase('name')}}</th>

                            <th style="border:1px solid #000;">{{getPhrase('roll_no')}}</th>
                            <th style="border:1px solid #000;" ng-repeat="subject in subjects">@{{subject.subject_code}} (@{{subject.total_marks}})</th>
                            <th style="border:1px solid #000;">AVG. %</th>
                            <th style="border:1px solid #000;">{{getPhrase('excellence_level')}}</th>

                            </thead>
                            <tbody>
                            <tr ng-repeat="student in students | filter:search track by $index">
                                <td style="border:1px solid #000;"><a href="{{URL_USER_DETAILS}}@{{student.slug}}">@{{student.name}}</a></td>

                                <td style="border:1px solid #000;">@{{student.roll_no}}</td>

                                <td style="border:1px solid #000; text-align: center;" ng-repeat="marks_record in student.marks">@{{marks_record.score.marks_obtained}}</td>
                                <td style="border:1px solid #000;">

                                    <div class="progress">
                                        <div  ng-class="{'progress-bar progress-bar-success':student.average>=75, 'progress-bar progress-bar-warning':student.average<75 && student.average>=50, 'progress-bar progress-bar-danger':student.average<50 && student.average>=0}" role="progressbar" aria-valuenow="@{{student.average}}"
                                              aria-valuemin="0" aria-valuemax="100" style='width:@{{student.average}}%'>
                                            @{{student.average}}%
                                        </div>
                                    </div>

                                </td>
                                <td style="border:1px solid #000;" ng-if="student.average >= 70">{{getPhrase('excellent_level')}}</td>
                                <td style="border:1px solid #000;" ng-if="student.average < 70">{{getPhrase('ordinary_level')}}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div ng-if="result_data.students.length<=0"  class="text-center" >{{getPhrase('no_data_available')}}</div>
                    <br>
                    <a ng-if="result_data.students.length>0"  class="btn btn-primary" ng-click="printIt()">Print</a>
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

    @include('educational_supervisor.js-script-marks',array('slug'=>$slug))

@stop