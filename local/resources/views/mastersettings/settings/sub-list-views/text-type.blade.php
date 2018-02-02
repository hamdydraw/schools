<?php $tool_tip = '';
if(isset($value->tool_tip))
    $tool_tip = $value->tool_tip;

?>
<div class="col-md-6">
    <fieldset class="form-group">
        <?php $key_name=substr($key,strpos($key,'-')+1); ?>
        {{ Form::label($key_name, getPhrase($key_name)) }}

        <input
                type="{{$value->type}}"
                class="form-control"
                name="{{$key}}[value]"
                required="true"
                value = "{{$value->value}}"
                data-toggle="tooltip"
                title ="{{$tool_tip}}"
                data-placement="right"
        >

        <input
                type="hidden"
                name="{{$key}}[type]"
                value = "{{$value->type}}" >

        <input
                type="hidden"
                name="{{$key}}[tool_tip]"
                value = "{{$tool_tip}}" >

    </fieldset>
</div>