<?php
use Illuminate\Support\Facades\Auth;
?>
@include('common.angular-factory')
<script>


    app.controller('academicAttendance', function ($scope, $http, httpPreConfig,$location) {
        @include('common.js-script-year-selection',array('doCall'=>false))
            $scope.current_year_sc      = {{default_year()}};
        $scope.current_sem_sc       = null;
        $scope.current_course_sc    = null;
        $scope.current_subject_sc   = null;
        $scope.current_teacher = null;
        $scope.attendance_date = new Date().toISOString().split("T")[0];
        $scope.academic_courses_sc  = [];
        $scope.academic_subjects_sc = [];
        $scope.lastPart = window.location.href.split("/").pop();
        $scope.getCourses = function () {
                $http({
                    method:"GET",
                    url:'{{PREFIX}}'+'get_courses/'+$scope.academic_year,
                    dataType:"json",
                    headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                })
                    .then(function (response) {
                        $scope.academic_courses_sc = response.data;
                        $scope.setCurrents();
                    })
        }

        $scope.getCourses();

        $scope.setCurrents = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'current_year_sem',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.current_year_sc = response.data.year;
                    $scope.current_sem_sc  = response.data.semister;
                })
        }

        $scope.getSubjects = function () {
            if($scope.current_course_sc == null || $scope.academic_year == null || $scope.current_sem_sc == null){
                return false;
            }
                $http({
                    method:"GET",
                    url:'{{PREFIX}}'+'get_subjects_2/'+$scope.academic_year+'/'+$scope.current_sem_sc+'/'+$scope.current_class_sc+'/'+$scope.current_teacher,
                    dataType:"json",
                    headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                })
                    .then(function (response) {
                        $scope.academic_subjects_sc = response.data;
                    })


        }

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

        $scope.getClasses = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'teacher_classes/'+$scope.academic_year+'/'+$scope.current_teacher+'/'+$scope.current_course_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_classes_sc = response.data;
                })
        }

        $scope.admin_classes = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_classes/'+$scope.current_course_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_classes_sc = response.data;
                })
        }

        $scope.get_exams = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_exams/'+$scope.current_course_sc+'/'+$scope.current_subject_sc,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    console.log(response.data);
                    $scope.quizs = response.data;
                })
        }



    });

</script>
