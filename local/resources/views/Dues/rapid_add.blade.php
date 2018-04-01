@extends($layout)
@section('content')
    <?php $due_types = array('select', 'mandatory', 'optional'); ?>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{url('/')}}"><i class="mdi mdi-home"></i></a></li>
                        <li><a href="{{url('/mastersettings/skills')}}">{{getPhrase('all_academic_dues')}}</a></li>
                        <li>{{$title}}</li>
                    </ol>
                </div>
            </div>
            <div class="panel panel-custom">
                <div class="panel-heading">
                    <div class="pull-right messages-buttons helper_step1">
                        <a href="{{url('/mastersettings/dues/all_expenses')}}"
                           class="btn  btn-primary button">{{ getPhrase('all')}}</a>

                    </div>
                    <h1>{{ $title }}</h1>
                </div>

                <div class="panel-body packages">
                    @if(isset($record))
                        {{ Form::open(array('url' => 'mastersettings/dues/rapid_edit/'.$record->id, 'method'=>'post')) }}
                    @else
                        {{ Form::open(array('url' => 'mastersettings/dues/rapid_add', 'method'=>'post')) }}
                    @endif
                    {{csrf_field()}}
                    <fieldset class="form-group">
                        <div class="col-md-4">
                            {{ Form::label('academic_dues', getphrase('academic_dues')) }}
                            {{ Form::text('title', $value = isset($record) ? $record->title : '' , $attributes = array('class'=>'form-control','required'=>'required','placeholder' => isset($record) ? getPhrase('edit_expenses'):getPhrase('add_expenses'))) }}
                        </div>
                    </fieldset>
                    <div class="row">
                        <fieldset class="form-group col-md-3">
                            <input type="submit" class="btn btn-success"
                                   style="margin-right: 600px; height: 70px; width: 70px;"
                                   @if(isset($record)) value="{{getPhrase('update')}}"
                                   @else value="{{getPhrase('save')}}" @endif>
                        </fieldset>
                    </div>
                    {{ Form::close() }}

                </div>
            </div>
        </div>
    </div>
@stop
@section('footer_scripts')
@stop
