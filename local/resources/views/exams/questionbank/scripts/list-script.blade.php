<script src="{{JS}}angular.js"></script>
<script>
    var app = angular.module('academia', []);
    app.controller('mainList', function($scope, $http,$location) {

        $scope.current_course_sc    = null;
        $scope.current_subject_sc   = null;
        $scope.academic_courses_sc  = [];
        $scope.academic_subjects_sc = [];

        $scope.getCourses = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_courses',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_courses_sc = response.data;
                    $scope.current_course_sc   = $scope.academic_courses_sc[0].id.toString();
                    $scope.getSubjects();
                })
        }
        $scope.getCourses();

        $scope.getSubjects = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_subjects_by_course/'+$scope.current_course_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_subjects_sc = response.data;
                    $scope.current_subject_sc   = $scope.academic_subjects_sc[0].id.toString();
                })
        }

        $scope.toTable = function () {

            angular.forEach($scope.academic_courses_sc,function (item) {
                if(item.id == $scope.current_course_sc){
                    $scope.course_slug =  item;
                }
            })

            angular.forEach($scope.academic_subjects_sc,function (item) {
                if(item.id == $scope.current_subject_sc){
                    $scope.subject_slug =  item;
                }
            })

            window.location.href = "{{PREFIX}}exams/questionbank/view/"+$scope.subject_slug.slug+"/"+$scope.course_slug.slug;
        }


    });
</script>