@extends($layout)
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a></li>
                        <li><a href="{{URL_COURSES_DASHBOARD}}">{{ getPhrase('master_setup_dashboard')}}</a></li>
                        <li><a href="{{URL_MASTERSETTINGS_COURSE}}">{{ getPhrase('courses')}}</a></li>
                        <li class="active">{{isset($title) ? $title : ''}}</li>
                    </ol>
                </div>
            </div>
        @include('errors.errors')
        <!-- /.row -->

            <div class="panel panel-custom">
                <div class="panel-heading">
                    <div class="pull-right messages-buttons helper_step1">
                        <a href="{{URL_MASTERSETTINGS_COURSE}}"
                           class="btn  btn-primary button">{{ getPhrase('list')}}</a>
                    </div>
                    <h1>{{ $title }}  </h1>
                </div>
                <div class="panel-body form-auth-style" id="app">
                    <?php $button_name = getPhrase('create'); ?>
                    @if ($record)
                        <?php $button_name = getPhrase('update'); ?>
                        {{ Form::model($record,
                        array('url' => URL_MASTERSETTINGS_COURSE_EDIT.$record->slug,
                        'method'=>'patch','name'=>'formCourses ', 'novalidate'=>'')) }}
                    @else
                        {!! Form::open(array('url' => URL_MASTERSETTINGS_COURSE_ADD, 'method' => 'POST','name'=>'formCourses ', 'novalidate'=>'')) !!}
                    @endif

                    @include('mastersettings.course.form_elements',
                    array('button_name'=> $button_name,'title'=>$title),
                    array('course_parent_list'=>$course_parent_list))

                    {!! Form::close() !!}


                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
@stop
@section('footer_scripts')
    @include('common.validations')


 