
<script>
    angular.module('academia', []).controller('subjects_course', function ($scope, $http, $timeout, $location) {
        $scope.current_year   = null;
        $scope.current_sem    = null;
        $scope.current_course = null;
        $scope.subject_id = {{$id}};
        console.log($scope.subject_id);

    });
</script>