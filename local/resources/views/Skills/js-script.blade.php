<script>
    $(document).ready(function () {
        $('#course_selection').on('change', function () {
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
                                $('#subjects').append("<option value='" + i.subjects_id + "'>" + i.subjects_title + "</option>");
                            })
                        } catch (data) {
                        }

                    }

                }
            )
        })
        $(document).on('click','.btn-primary', function (e) {
            e.preventDefault();
            $('.texts').append('<div class="row">' +
                '                <fieldset class="form-group col-md-3">' +
                '                    {{ Form::label('skill', getphrase('skill')) }}' +
                '                    <span class="text-red">*</span>' +
                '                    {{ Form::text('skill[]', $value = null , $attributes = array('class'=>'form-control', 'placeholder' => 'Skill Name','id'=>'skill')) }}' +
                '                </fieldset>' +
                '                <fieldset class="form-group col-md-3" style="margin-top: 35px;">' +
                '                    <button class="btn btn-primary">{{getPhrase('new')}}</button>' +
                '                    <button class="btn btn-danger">{{getPhrase('delete')}}</button>' +
                '                </fieldset>' +
                '            </div>');
        });
        $(document).on('click','.btn-danger', function (e) {
            e.preventDefault();
            $(this).parent().parent().remove();
        })
    })
</script>