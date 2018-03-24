<script>
    function getSubjects() {
        $('#subjects').empty();
        $('#subjects').append("<option>{{getPhrase('select')}}</option>");
        $.ajax(
            {
                url: '{{url('mastersettings/skills/getRelatedSubjects')}}',
                type: 'GET',
                data: {course_parent_id: $('#course_selection').val()},
                success: function (data) {
                    try {
                        data.forEach(function (i) {
                            if (i.subjects_id == '<?php echo isset($record) ? $record->subject_id : null ?>') {
                                $('#subjects').append("<option selected value='" + i.subjects_id + "'>" + i.subjects_title + "</option>");
                            }else {
                                $('#subjects').append("<option value='" + i.subjects_id + "'>" + i.subjects_title + "</option>");
                            }
                        })
                    } catch (data) {
                    }
                }
            }
        )
    }

    $(document).ready(function () {
        getSubjects();
        $('#course_selection').on('change', function () {
            getSubjects();
        })
        $(document).on('click', '.new', function (e) {
            e.preventDefault();
            $('.texts').append('<div class="row">' +
                '                <fieldset class="form-group col-md-3">' +
                '                    {{ Form::label('skill', getphrase('skill')) }}' +
                '                    <span class="text-red">*</span>' +
                '                    {{ Form::text('skills[]', $value = null , $attributes = array('class'=>'form-control', 'placeholder' => 'Skill Name','id'=>'skill')) }}' +
                '                </fieldset>' +
                '                <fieldset class="form-group col-md-3" style="margin-top: 35px;">' +
                '                    <button class="btn btn-primary">{{getPhrase('new')}}</button>' +
                '                    <button class="btn btn-danger">{{getPhrase('delete')}}</button>' +
                '                </fieldset>' +
                '            </div>');
        });
        $(document).on('click', '.btn-danger', function (e) {
            e.preventDefault();
            $(this).parent().parent().remove();
        })
    })
</script>