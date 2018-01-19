<?php $tool_tip = '';
if (isset($value->tool_tip))
    $tool_tip = $value->tool_tip;

?>
<div class="col-md-12">
    <div class="col-md-3">
        {{ Form::label($key, getPhrase($key)) }}
    </div>
    <fieldset class="form-group col-md-9">



        <input
                type="{{$value->type}}"
                class="form-control"
                name="{{$key}}[value]"
                required="true"
                value="{{$value->value}}"
                data-toggle="tooltip"
                title="{{$tool_tip}}"
                data-placement="right"
        >

        <input
                type="hidden"
                name="{{$key}}[type]"
                value="{{$value->type}}">

        <input
                type="hidden"
                name="{{$key}}[tool_tip]"
                value="{{$tool_tip}}">

    </fieldset>
</div>