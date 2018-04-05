@include('common.angular-factory')

<script>

    app.controller('MarksController', function ($scope, $http, httpPreConfig, $location) {

        $scope.tab = 1;

        $scope.users = [];
        $scope.exam_list = [];
        $scope.selected_user = null;
        $scope.certificates_issued = [];
        $scope.form_show = false;
        $scope.quiz_categories = [];
        $scope.subjects = [];
        $scope.students = [];
        $scope.course_title = '';
        $scope.default='select';

        $scope.getStudentMarks112 = function () {
            $('#classNumber').val($('#classes').val())
            route = '{{url("supervisor/staff/students-marks/".$slug->slug)}}';
            data = {
                _method: 'post',
                '_token': httpPreConfig.getToken(),
                'course_id':$('#classes').val()
            };

            httpPreConfig.webServiceCallPost(route, data).then(function (result) {
                result = result.data;
                $scope.result_data = result;
                $scope.subjects = result.subjects;
                $scope.students = result.students;
                $scope.course_title = result.course_title;
            });
        }

        $scope.printIt = function () {
            dta = $('#printable_data').html();
            $('#html_data').val(dta);
            $('#htmlform').submit();
        }
    });


</script>