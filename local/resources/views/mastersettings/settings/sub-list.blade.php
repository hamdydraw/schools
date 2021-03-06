@extends('layouts.admin.adminlayout')
@section('header_scripts')

@stop
@section('content')

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a></li>
                        <li><a href="{{URL_SETTINGS_DASHBOARD}}">{{ getPhrase('master_settings')}}</a></li>


                        <li><a href="{{URL_SETTINGS_LIST}}">{{ getPhrase('settings')}}</a></li>
                        @if($slug=='time-table'||$slug=='timetable-settings')

                            <li><a href="{{URL_SETTINGS_TIMETABLE}}">{{ getPhrase('timetable_settings')}}</a></li>
                        @endif

                        @if($slug=='bonafide-content'||$slug=='bonafide-settings'||$slug=='transfer-certificate-fields'||$slug=='transfer-certificate-settings'||$slug=='id-card-fields'||$slug=='id-card-settings')

                            <li>
                                <a href="{{URL_SETTINGS_CERTIFICATES}}">{{ getPhrase('certificates_settings_dashboard')}}</a>
                            </li>
                        @endif
                        <li>{{ $title }}</li>
                    </ol>
                </div>
            </div>

            <!-- /.row -->
            <div class="panel panel-custom col-lg-8 col-lg-offset-2">
                <div class="panel-heading">

                    <div class="pull-right messages-buttons">

                    </div>
                    <h1>{{ $title }}

                    </h1>

                </div>
                <div class="panel-body packages">
                    <div class="row">
                        @if($record->image)
                            <img src="{{IMAGE_PATH_SETTINGS.$record->image}}" width="100" height="100">
                        @endif
                    </div>
                    @if($slug == 'messaging-system')
                        <div class="row" style="margin-bottom: 3%;margin-right: 4%;">
                            <h4>{{getPhrase('messaging_system_for')}}</h4>
                        </div>
                        @endif
                    {!! Form::open(array('url' => URL_SETTINGS_ADD_SUBSETTINGS.$record->slug, 'method' => 'PATCH',
                        'novalidate'=>'','name'=>'formSettings ', 'files'=>'true')) !!}
                    <div class="row">
                        <ul class="list-group">
                            @if(count($settings_data))

                                @foreach($settings_data as $key=>$value)
                                    <?php
                                    $type_name = 'text';

                                    if ($value->type == 'number' || $value->type == 'email' || $value->type == 'password')
                                        $type_name = 'text';
                                    else
                                        $type_name = $value->type;
                                    ?>
                                    @if($slug == 'social-logins')
                                        @include(
                                                    'mastersettings.settings.sub-list-views.'.$type_name.'-type',
                                                    array('key'=>$key, 'value'=>$value,'hideElementOrView'=>$hideElementOrView,'social'=>'view')
                                                )
                                    @else
                                        @include(
                                               'mastersettings.settings.sub-list-views.'.$type_name.'-type',
                                               array('key'=>$key, 'value'=>$value,'social'=>'hide')
                                           )
                                    @endif
                                @endforeach

                            @else
                                <li class="list-group-item">{{ getPhrase('no_settings_available')}}</li>
                            @endif
                        </ul>

                    </div>


                    @if(count($settings_data))
                        <div class="buttons text-center clearfix">
                            <button class="btn btn-lg btn-primary button" ng-disabled='!formTopics.$valid'
                            >{{ getPhrase('update') }}</button>
                        </div>
                    @endif
                    {!! Form::close() !!}
                    @if($record->slug=='id-card-settings')

                        @include('mastersettings.settings.id-card-templates')
                    @elseif($record->slug=='site-settings')
                        @include('mastersettings.settings.theme-layouts')
                    @endif


                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <style>
        .clear {
            clear: both;
        }
    </style>
@endsection


@section('footer_scripts')
    <script src="{{JS}}bootstrap-toggle.min.js"></script>

@stop
