$scope.getCourses = function () {
$http({
method:"GET",
url:'{{PREFIX}}'+'get_courses/'+$scope.current_year_sc+'/'+$scope.current_sem_sc,
dataType:"json",
headers:{'Content-Type': 'application/x-www-form-urlencoded'}
})
.then(function (response) {
$scope.academic_courses_sc = response.data;
if($scope.academic_courses_sc.length != 0){
$scope.current_course_sc = $scope.academic_courses_sc[0].id.toString();
}
$scope.getClasses();
$scope.getSubjects();

})
}

$scope.getClasses = function () {
$http({
method:"GET",
url:'{{PREFIX}}'+'get_sub_courses/'+$scope.current_course_sc,
dataType:"json",
headers:{'Content-Type': 'application/x-www-form-urlencoded'}
})
.then(function (response) {
$scope.subcourses = response.data;
if(response.data.length != 0){
$scope.current_sub_course   = response.data[0].id.toString();
}
})
}