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

                        <a href="{{url('/mastersettings/dues/rapid_add')}}"
                           class="btn  btn-primary button">{{ getPhrase('create_rapid_expense')}}</a>
                        <a href="{{url('/mastersettings/dues')}}"
                           class="btn  btn-primary button">{{ getPhrase('all')}}</a>


                    </div>
                    <h1>{{ $title }}</h1>
                </div>

                <div class="panel-body packages">
                    @if(isset($record))
                        {{ Form::open(array('url' => 'mastersettings/dues/update/'.$record->id, 'method'=>'post')) }}
                    @else
                        {{ Form::open(array('url' => 'mastersettings/dues/store', 'method'=>'post')) }}
                    @endif
                    {{csrf_field()}}
                    <fieldset class="form-group">
                        {{ Form::label('academic_year', getphrase('academic_year')) }}
                        <span class="text-red">*</span>
                        <select name="academic_year" class="form-control" id="course_selection" required="required">
                            <option value=select>{{getPhrase('select')}}</option>
                            @foreach($academics_years as $value)
                                <option value="{{$value->id}}"
                                        @if(isset($record) and $record->academic_id == $value->id) selected @endif>{{$value->academic_year_title}}</option>
                            @endforeach
                        </select>
                    </fieldset>
                    <fieldset class="form-group">
                        <div class="col-md-4">
                            {{ Form::label('academic_dues', getphrase('academic_dues')) }}
                            <select class="form-control" name="academic_dues" required>
                                <option value=select>{{getPhrase('select')}}</option>
                                @foreach($allDues as $due)
                                    <option value="{{$due->id}}"
                                            @if(isset($record) and $record->due_id == $due->id) selected @endif>{{$due->title}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-4">
                            {{ Form::label('due_value', getphrase('due_value')) }}
                            <input type="number" class="form-control" name="due_value"
                                   @if(isset($record)) value="{{$record->due_value}}" @endif required>
                        </div>
                        <div class="col-md-4">
                            {{ Form::label('due_type', getphrase('due_type')) }}
                            <select class="form-control" name="due_type" required>
                                @foreach($due_types as $due_type)
                                    <option value="{{$due_type}}"
                                            @if(isset($record) and $record->due_type == $due_type) selected @endif>{{getPhrase($due_type)}}</option>
                                @endforeach
                            </select>
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
