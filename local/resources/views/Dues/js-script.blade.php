<script>
    $(document).ready(function () {
        var total= parseInt("{{$total}}");
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
    })
</script>
