<?php
    use Illuminate\Support\Facades\Auth;
?>
@include('common.angular-factory')
<script>

 
     app.controller('academicAttendance', function ($scope, $http, httpPreConfig) {
    @include('common.js-script-year-selection',array('doCall'=>false))
         $scope.current_year_sc      = null;
         $scope.current_sem_sc       = null;
         $scope.current_course_sc    = null;
         $scope.current_subject_sc   = null;
         $scope.academic_courses_sc  = [];
         $scope.academic_subjects_sc = [];
         $scope.role_sc        = {{Auth::user()->role_id}};


         $scope.lastPart = window.location.href.split("/").pop();
         $scope.getCourses = function () {
             if($scope.role_sc == 9){
                 //supervisor/teacher-courses/{slug}
                 $http({
                     method:"GET",
                     url:'{{PREFIX}}'+'supervisor/teacher-courses/'+$scope.lastPart,
                     dataType:"json",
                     headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                 })
                     .then(function (response) {
                         console.log(response.data);
                         $scope.academic_courses_sc = response.data;
                         $scope.setCurrents();
                     })
             }else{
                 $http({
                     method:"GET",
                     url:'{{PREFIX}}'+'get_courses',
                     dataType:"json",
                     headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                 })
                     .then(function (response) {
                         $scope.academic_courses_sc = response.data;
                         $scope.setCurrents();
                     })
             }
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
                     console.log(response.data);
                 })
         }

         $scope.getSubjects = function () {
             if($scope.current_course_sc == null || $scope.current_year_sc == null || $scope.current_sem_sc == null){
                 return false;
             }

             if($scope.role_sc == 9){
                 $http({
                     method:"GET",
                     url:'{{PREFIX}}'+'supervisor/teacher-subjects/'+$scope.current_year_sc+'/'+$scope.current_sem_sc+'/'+$scope.current_course_sc+'/'+$scope.lastPart,
                     dataType:"json",
                     headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                 })
                     .then(function (response) {
                         $scope.academic_subjects_sc = response.data;
                     })
             }else{
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

         }

 
});
  
</script>