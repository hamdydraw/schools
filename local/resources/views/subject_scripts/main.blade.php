
<script>
    angular.module('academia', []).controller('subjects_course', function ($scope, $http, $timeout, $location) {
        $scope.current_year_sc      = null;
        $scope.current_sem_sc       = null;
        $scope.current_course_sc    = null;
        $scope.current_subject_sc   = null;
        $scope.subject_id_sc        = {{$id}};
        $scope.academic_years_sc    = [];
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
        $scope.academic_courses_sc  = [];
        $scope.academic_subjects_sc = [];


        $scope.get_edit_data = function () {
            if($scope.subject_id_sc != 0){
                $http({
                    method:"GET",
                    url:'{{PREFIX}}'+'get_subject_edit/'+$scope.subject_id_sc,
                    dataType:"json",
                    headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                })
                    .then(function (response) {
                        $scope.current_year_sc      = response.data.year.id.toString();
                        $scope.current_sem_sc       = response.data.sem.toString();
                        $scope.current_course_sc    = response.data.course.id.toString();
                        $scope.current_subject_sc   = $scope.subject_id_sc.toString();
                        console.log(response.data);
                        $scope.getSubjects();


                    })
            }
        }

        
        $scope.getYears = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_years',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_years_sc = response.data;
                    $scope.get_edit_data();
                })
        }


        $scope.getCourses = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_courses',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_courses_sc = response.data;
                    $scope.getYears();
                })
        }
        $scope.getCourses();

        $scope.getSubjects = function (subject = 1) {
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
                })
        }

        $scope.setCategories = function (id) {
            return false;
        }


    });
</script>