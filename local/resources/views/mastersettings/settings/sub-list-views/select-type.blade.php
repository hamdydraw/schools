<?php $tool_tip = '';
if (isset($value->tool_tip))
    $tool_tip = $value->tool_tip;
?>
<div class="col-md-6">
    <div class="form-group">
        <?php $key_name=substr($key,strpos($key,'-')+1); ?>
        {{ Form::label($key_name,  getPhrase($key_name))  }}
        <select name="{{$key}}[value]" class="form-control" data-toggle="tooltip"
                title="{{$tool_tip}}"
                data-placement="right">


            @foreach($value->extra->options as $val=>$text)
                <?php
                $selected = '';
                if ($value->value == $val)
                    $selected = 'selected';
                ?>
                <option value="{{$val}}" {{$selected}}>{{$text}}</option>
            @endforeach
        </select>


        <input type="hidden" name="{{$key}}[type]" value="{{$value->type}}">
        <input type="hidden" name="{{$key}}[tool_tip]" value="{{$value->tool_tip}}">


    </div>
</div>