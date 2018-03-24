<script>
    $(document).ready(function () {
        var total= 0;
        $('.expenses').on('change', function () {
            if ($(this).prop('checked') == true) {
                total = total + parseInt($(this).val());
                $('#total').text(total)
            }
            if ($(this).prop('checked') == false) {
                total = total - parseInt($(this).val());
                $('#total').text(total)
            }
        })
        $('button').on('click',function () {
           $('#gateway').val($(this).attr('id'))
        })
    })
</script>
