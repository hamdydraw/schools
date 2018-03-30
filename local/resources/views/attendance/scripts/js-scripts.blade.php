
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

         $scope.getCourses = function () {
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

 
});
  
</script>