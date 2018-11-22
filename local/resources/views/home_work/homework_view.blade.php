@extends(getLayout())
@include('home_work.scripts.script')
@include('common.editor')
@section('header_scripts')

    <link href="{{CSS}}ajax-datatables.css" rel="stylesheet">
@stop
@section('content')

    <?php
    $data =  \App\Settings::get_HW_extensions();
    $extn = $data->value;

    ?>

    <div id="page-wrapper" ng-controller="homeworkCtrl">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{url('/')}}"><i class="mdi mdi-home"></i></a> </li>
                        <li>{{ $title }}</li>
                    </ol>
                </div>
            </div>

            <!-- /.row -->
            <div class="panel panel-custom">
                <div class="panel-heading">

                    <h1>{{ $title }} @if(!is_student()) - {{ getUserName($record->student_id) }} @endif </h1>
                </div>
                <div class="panel-body packages">
                    <div class="row">
                        <span>{!! $homework->explanation !!}</span>
                    </div>
                    @if($homework->file != '')
                    <div class="row">
                        <span>{{$homework->file}}</span>
                        <a class="btn btn-primary" href='{{HOMEWORK_PATH.$homework->file}}' download> {{getPhrase('download')}}</a>
                    </div>
                    @endif
                    <br><br><br>
                    <div class="row">
                        <h2>{{getPhrase('replay')}}</h2>

                        {!! Form::open(array('url' => URL_HOMEWORK_REPLAY.$record->slug, 'method' => 'POST', 'files' => true, 'name'=>'formQuestionBank ', 'novalidate'=>'')) !!}
                        <div class="row">
                            <div class="col-md-8">
                                <fieldset class="form-group col-md-8">
                                    <textarea class="ckeditor" rows="7" cols = "150" name="replay"></textarea>
                                </fieldset>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <fieldset class="form-group col-md-8">
                                    <input class="form-control" id="upload1" type="file" accept="{{$extn}}" ng-model="upload1" ngf-select="upload_file($files)">
                                    <span style="color: red" ng-if="valid == 'no'"> @{{ massage }}</span>
                                    <span style="color: green" ng-if="valid == 'ok'"> @{{ massage }}</span>
                                    {{getPhrase('supported_formats_are')}} {{$extn}}
                                    <input type="hidden" name="question_file" ng-model="file_name" value="@{{file_name}}">
                                </fieldset>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <fieldset class="form-group col-md-8">
                                    <input type="submit" value="{{getPhrase('send')}}" class="btn-lg btn btn-google-plus" style="float: left">
                                </fieldset>
                            </div>
                        </div>
                        {!! Form::close() !!}

                        @foreach($replays as $replay)
                    <div class="row">
                        <span><h3>{{$replay->name}}</h3></span>
                        <p>{!! $replay->massage !!}</p>
                        @if($replay->file != '')
                        <span style="background-color: yellow">{{$replay->file}}</span>
                        <a class="btn btn-primary" href='{{HOMEWORK_PATH.$replay->file}}' download> {{getPhrase('download')}}</a>
                        @endif
                        <h4 style="float: left">{{$replay->created_at}}</h4>
                    </div>
                            @endforeach

                    </div>
                </div>

            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
@endsection

@section('footer_scripts')



@stop
