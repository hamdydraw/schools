@extends($layout)
@section('header_scripts')
    {!! Charts::assets() !!}
@stop

@section('content')
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <ol class="breadcrumb">

                            <li><i class="fa fa-home"></i> {{ $title}}</li>
                        </ol>
                    </div>
                </div>

                <div class="row">


                    <div class="col-md-4 ">
                        <div class="card card-yellow text-xs-center">
                            <div class="card-block">
                                <h4 class="card-title">
                                    <i class="fa fa-archive"></i>
                                </h4>
                                <p class="card-text">{{ getPhrase('specify_subjects_to_teachers') }}</p>
                            </div>
                            <a class="card-footer text-muted"
                               href="{{url('supervisor/staff/teachers-subjects')}}">
                                {{ getPhrase('view_all')}}
                            </a>
                        </div>
                    </div>

                    <div class="col-md-4 ">
                        <div class="card card-green text-xs-center">
                            <div class="card-block">
                                <h4 class="card-title">
                                    <i class="fa fa-paper-plane-o"></i>
                                </h4>
                                <p class="card-text">{{ getPhrase('staff_toic_plan') }}</p>
                            </div>
                            <a class="card-footer text-muted" href="{{url('supervisor/staff/staff-topic-plan')}}">
                                {{ getPhrase('view_all')}}
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="card card-blue text-xs-center">
                            <div class="card-block">
                                <h4 class="card-title"><i class="fa fa-calendar-check-o"></i></h4>
                                <p class="card-text">{{ getPhrase('teacher_students_attendance') }}</p>
                            </div>
                            <a class="card-footer text-muted" href="{{url('supervisor/staff/teacher-student-attendance')}}">
                                {{ getPhrase('view_all')}}
                            </a>
                        </div>
                    </div>

                    @if(Module_state('daily_school_schedule'))
                        <div class="col-md-4">
                            <div class="card card-red text-xs-center">
                                <div class="card-block">
                                    <h4 class="card-title"><i class="fa fa-calendar"></i></h4>
                                    <p class="card-text">{{ getPhrase('teachers_timetables') }}</p>
                                </div>
                                <a class="card-footer text-muted" href="{{url('supervisor/staff/teachers-timetable')}}">
                                    {{ getPhrase('view_all')}}
                                </a>
                            </div>
                        </div>
                    @endif
                    <div class="col-md-4 ">
                        <div class="card card-black text-xs-center">
                            <div class="card-block">
                                <h4 class="card-title"><i class="fa fa-users"></i></h4>
                                <p class="card-text">{{ getPhrase('teacher_students_marks') }}</p>
                            </div>
                            <a class="card-footer text-muted"
                               href="{{url('supervisor/staff/students-marks')}}">
                                {{ getPhrase('view_all')}}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->
        </div>
@stop

@section('footer_scripts')


@stop
