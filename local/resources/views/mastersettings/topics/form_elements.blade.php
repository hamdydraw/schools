<fieldset class="form-group">
    {{ Form::label('subject_id', getphrase('subject')) }}
    <span class="text-red">*</span>
    {{Form::select('subject_id', $subjects, null, ['class'=>'form-control','onChange'=>'getSubjectsParentsFromTopic()', 'id'=>'subject',
        'ng-model'=>'subject_id',
        'required'=> 'true',
        'ng-class'=>'{"has-error": formTopics.subject_id.$touched && formTopics.subject_id.$invalid}'
    ])}}
    <div class="validation-error" ng-messages="formTopics.subject_id.$error">
        {!! getValidationMessage()!!}
    </div>
</fieldset>
<fieldset class="form-group">
    {{ Form::label('semesters', getphrase('semester')) }}
    <span class="text-red">*</span>
    <select class="form-control" id="semesters" name="semesters" onchange="getSubjectParents(this.value)">
        @for($i=1;$i<=count($total_semesters);$i++)
            <option value="{{$i}}" @if(isset($record->semester_num) and $record->semester_num == $i) selected @endif>{{getPhrase($total_semesters[$i])}}</option>
        @endfor
    </select>
    <div class="validation-error" ng-messages="formTopics.subject_id.$error">
        {!! getValidationMessage()!!}
    </div>
</fieldset>

<fieldset class="form-group">
    <label for="">{{getPhrase('branch')}}</label>
    <span class="text-red">*</span>
    <select name="course_id" class="form-control" required="required" ng-model="current_course_sc" ng-change="getSubjects()">
        <option ng-repeat="course in academic_courses_sc" value="@{{ course.id }}">@{{ course.course_title }}</option>
    </select>
</fieldset>

<fieldset class="form-group">
    {{ Form::label('parent_id', getphrase('select_parent')) }}
    <span class="text-red">*</span>
    <select class="form-control" id="parent" name="parent_id">
        <option value=""></option>
    </select>
    <div class="validation-error" ng-messages="formTopics.subject_id.$error">
        {!! getValidationMessage()!!}
    </div>
</fieldset>


<fieldset class="form-group">

    {{ Form::label('topic_name', getphrase('topic_name')) }}
    <span class="text-red">*</span>
    {{ Form::text('topic_name', $value = null , $attributes = array('class'=>'form-control', 'placeholder' => 'Introduction',
        'ng-model'=>'topic_name',
        'required'=> 'true',
        'ng-class'=>'{"has-error": formTopics.topic_name.$touched && formTopics.topic_name.$invalid}',
     ))}}
    <div class="validation-error" ng-messages="formTopics.topic_name.$error">
        {!! getValidationMessage()!!}
    </div>
</fieldset>

<fieldset class="form-group">

    {{ Form::label('description', getphrase('description')) }}

    {{ Form::textarea('description', $value = null , $attributes = array('class'=>'form-control', 'rows'=>'5', 'placeholder' => 'Description of the topic')) }}
</fieldset>

<div class="buttons text-center">
    <button class="btn btn-lg btn-primary button"
            ng-disabled='!formTopics.$valid'
    >{{ $button_name }}</button>
</div>
		 