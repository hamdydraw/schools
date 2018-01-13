@include('common.angular-factory')
<script>

    app.controller('TabController', function ($scope, $http, httpPreConfig, $location) {
        @include('common.js-script-year-selection')
            $scope.tab = 1;
        $scope.users = [];
        $scope.exam_list = [];
        $scope.to_years = [];
        $scope.to_selected_year = '';
        $scope.to_semisters = [];
        $scope.to_selected_semister = '';
        $scope.to_course = [];
        $scope.to_course_id = '';
        $scope.to_selected_course_id = '';
        $scope.to_total_years = 0;
        $scope.to_total_semisters = 0;
        $scope.current_user = {};
        $scope.current_user_remarks = '';


        $scope.doCall = function () {
            $scope.year_selected = true;
            if ($scope.to_years.length <= 0)
                $scope.to_years = $scope.years;

            academic_id = $scope.selected_academic_id;
            parent_course_id = $scope.selected_course_parent_id;
            course_id = $scope.selected_course_id;

            year = $scope.selected_year;
            semister = $scope.selected_semister;


            route = '{{URL_GET_STUDENTS_DETAINED}}';
            data = {
                _method: 'post',
                '_token': httpPreConfig.getToken(),
                'academic_id': academic_id,
                'parent_course_id': parent_course_id,
                'course_id': course_id,
                'year': year,
                'semister': semister,
            };

            httpPreConfig.webServiceCallPost(route, data).then(function (result) {
                console.log(result)
                users = [];
                angular.forEach(result.data, function (value, key) {
                    users.push(value);

                })

                $scope.result_data = users;


            });
        }

        $scope.selectAll = function () {
            if ($('.selectAll').html() === '<?php echo getPhrase("select_all");?>') {
                $('[id*=selctionActionChecked]').prop('checked', true);
                $('.selectAll').html('<?php echo getPhrase("cancel_all");?>');
            }else
            {
                $('[id*=selctionActionChecked]').prop('checked',false);
                $('.selectAll').html('<?php echo getPhrase("select_all");?>');
            }
        }
        $scope.reback = function () {
            $(document).ready(function () {
                checked = 'no';
                $('[id*=selctionActionChecked]').each(function () {
                    if ($('[id*=selctionActionChecked]').prop('checked') == false) {
                        checked='no';
                    }else {
                        checked='yes';
                        return;
                    }
                })
                if (checked !== 'yes')
                {
                    alert('<?php echo getPhrase("you_should_choose_one_student_at_least");?>')
                    return;
                }
                var checkedList = "";
                $("input:checked").each(function () {
                    checkedList += $(this).val() + ',';
                });
                checkedList = checkedList.slice(0, -1);
                $.ajax(
                    {
                        url: "{{url('/student/reback-detain')}}",
                        type: 'GET',
                        data: {checkedList: checkedList},
                        success: function (res) {
                            if (res == 'done') {
                                alert('<?php echo getPhrase("students_have_moved_to_schooling_again");?>')
                                window.location.reload();
                            } else {
                                alert('<?php echo getPhrase('an_error_occurred'); ?>')
                                window.location.reload();
                            }
                        }
                    }
                );

            });
        }
        $scope.printIt = function () {
            dta = $('#printable_data').html();
            $('#html_data').val(dta);
            // console.log('check');
            $('#htmlform').submit();
        }
    });


</script>