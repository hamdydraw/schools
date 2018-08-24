<script>
    var app = angular.module('academia', []);
    app.controller('mainList', function($scope, $http,$location) {

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
                url:'{{PREFIX}}'+'get_courses/'+$scope.current_year_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_courses_sc = response.data;
                    if($scope.academic_courses_sc.length != 0){
                        $scope.current_course_sc = $scope.academic_courses_sc[0].id.toString();
                    }
                    $scope.get_classes();
                })

        }

        $scope.get_classes = function () {
            if($scope.current_course_sc == null || $scope.current_year_sc == null || $scope.current_sem_sc == null){
                return false;
            }
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_classes/'+$scope.current_course_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.classes = response.data;
                    if($scope.classes.length != 0){
                        $scope.current_class_sc = $scope.classes[0].id.toString();
                    }
                })
        }



        $scope.toTable = function () {

            angular.forEach($scope.academic_years_sc,function (item) {
                if(item.id == $scope.current_year_sc){
                    $scope.year_slug =  item.slug;
                }
            })

            angular.forEach($scope.academic_sems_sc,function (item) {
                if(item.value == $scope.current_sem_sc){
                    $scope.sem_slug =  item.value;
                }
            })

            angular.forEach($scope.academic_courses_sc,function (item) {
                if(item.id == $scope.current_course_sc){
                    $scope.course_slug =  item.slug;
                }
            })

            angular.forEach($scope.classes,function (item) {
                if(item.id == $scope.current_class_sc){
                    $scope.class_slug =  item.slug;
                }
            })
            window.location.href = "{{URL_MASTERSETTINGS_COURSE_SUBJECTS}}"+$scope.year_slug+"/"+$scope.sem_slug+"/"+$scope.course_slug+"/"+$scope.class_slug;
        }




    });
</script>