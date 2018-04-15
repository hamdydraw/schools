<script src="{{JS}}select2.js"></script>
<script src="{{JS}}angular-messages.js"></script>
<script src="{{JS}}satellizer.min.js"></script>
<script>

    var app = angular.module('academia', ['ngMessages','satellizer']);

    app.controller('importTopicCtrl', function ($scope, $http) {
        $scope.current_course_sc    = null;
        $scope.current_subject_sc   = null;
        $scope.academic_courses_sc  = [];
        $scope.academic_subjects_sc = [];
        $scope.current_year_sc = {{default_year()}};
        $scope.current_year_sc = $scope.current_year_sc.toString();

        $scope.getYears = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_years',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_years_sc = response.data;
                    $scope.academic_sems_sc  = [
                        {
                            value : 1,
                            title : 'الاول'
                        },
                        {
                            value : 2,
                            title : 'الثانى'
                        }
                    ];
                    $scope.current_sem_sc = '1';
                    $scope.getCourses();
                })
        }
        $scope.getYears();

        $scope.getCourses = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_courses',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_courses_sc = response.data;
                    if($scope.academic_courses_sc.length != 0){
                        $scope.current_course_sc = $scope.academic_courses_sc[0].id.toString();
                    }
                    $scope.getSubjects();
                })
        }

        $scope.getSubjects = function () {
            if($scope.current_course_sc == null || $scope.current_year_sc == null || $scope.current_sem_sc == null){
                return false;
            }
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_subjects/'+$scope.current_year_sc+'/'+$scope.current_sem_sc+'/'+$scope.current_course_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_subjects_sc = response.data;
                    if($scope.academic_subjects_sc.length != 0){
                        $scope.current_subject_sc = $scope.academic_subjects_sc[0].subject_id.toString();
                    }
//                    $scope.current_subject_sc   = $scope.current_subject_sc.toString();

                })
        }
    });
</script>