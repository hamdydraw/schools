@extends($layout)
@section('content')
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb">
                    <li><a href="{{url('/')}}"><i class="mdi mdi-home"></i></a></li>
                    <li>{{ $title }}</li>
                </ol>
            </div>
        </div>
        <div class="container-fluid">
            {{ Form::open(array('url' => '/', 'method'=>'patch')) }}
            <fieldset class="form-group">
                {{ Form::label('course', getphrase('course')) }}
                <span class="text-red">*</span>
                {{Form::select('courses',$courses , null, ['class'=>'form-control','id'=>'course_selection'])}}
            </fieldset>
            <fieldset class="form-group">
                {{ Form::label('subject', getphrase('subject')) }}
                <span class="text-red">*</span>
                <select name="subjects" class="form-control" id="subjects">
                    <option>{{getPhrase('select')}}</option>
                </select>
            </fieldset>
            <div class="texts">
                <div class="row">
                    <fieldset class="form-group col-md-3">
                        {{ Form::label('skill', getphrase('skill')) }}
                        <span class="text-red">*</span>
                        {{ Form::text('skill[]', $value = null , $attributes = array('class'=>'form-control', 'placeholder' => 'Skill Name','id'=>'skill')) }}
                    </fieldset>
                    <fieldset class="form-group col-md-3" style="margin-top: 35px;">
                        <button class="btn btn-primary">{{getPhrase('new')}}</button>
                    </fieldset>
                </div>
            </div>
            <div class="row">
                <fieldset class="form-group col-md-3">
                    <input type="submit" class="btn btn-success" style="margin-right: 600px; height: 70px; width: 70px;"
                           value="{{getPhrase('save')}}">
                </fieldset>
            </div>
            {{ Form::close() }}
        </div>
    </div>
@stop
@section('footer_scripts')
    @include('Skills.js-script'))
@stop
