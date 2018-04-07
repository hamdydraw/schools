<script>
    $(document).ready(function () {
        var total = parseInt($('#total').text());
        $('#your_money').val(total)
        $('.expenses').on('change', function () {
            if ($(this).prop('checked') == true) {
                total = total + parseInt($(this).val());
                $('#total').text(total)
                $('#your_money').val(total)
                $('#your_money').attr('max',total)
            }
            if ($(this).prop('checked') == false) {
                total = total - parseInt($(this).val());
                $('#total').text(total)
                $('#your_money').val(total)
                $('#your_money').attr('max',total)
            }
        })
        $('button').on('click', function () {
            $('#gateway').val($(this).attr('id'))
        })

    })

    function validateCoupon() {
        $.ajax({
            url: "{{url('coupons/validate-coupon')}}",
            type: "get",
            data: {
                'item_name': '',
                'item_type': 'academic_expenses',
                'cost': $('#total').text(),
                'coupon_code': $('#coupon_text').val(),
                'student_id': "{{$student_id}}"
            },
            success: function (result) {
                console.log(result)
                var resultParsed = JSON.parse(result)
                if (resultParsed.status == 0) {
                    alertify.error(resultParsed.message);
                    return;
                }
                if (resultParsed.status == 1) {
                    $('#coupon').val(resultParsed.discount);
                    alertify.success(resultParsed.message);
                    return;
                }
            }
        })
    }
</script>

