<script src="{{JS}}jquery.min.js"></script>
<script src="{{JS}}angular.js"></script>

<script>
    var app = angular.module('academia', ['satellizer']);

    app.config(function ($authProvider){
        // google
        $authProvider.google({
            clientId: '446382111171-687482s31uvkk9k3nh3dppod3u10tddq.apps.googleusercontent.com',//
            url: 'api/auth/google',
            scope:['profile','email'],
        });
        //facebook
        $authProvider.facebook({
            clientId: '579685009052342',
            url: 'api/auth/facebook',
            scope: ['email'],
        });
    });

    app.controller('login',['$scope','$http','$rootScope','$auth','$location',function($scope,$http,$rootScope,$auth,$location) {
        console.log("my controller is running");
    }]);


</script>