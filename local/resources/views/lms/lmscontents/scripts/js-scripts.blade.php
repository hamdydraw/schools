<script src="{{JS}}angular.js"></script>
<script src="{{JS}}angular-messages.js"></script>
<script src="{{JS}}ng-file-upload.js"></script>
<script src="{{JS}}angular-toastr.min.js"></script>
<script src="{{JS}}angular-toastr.tpls.min.js"></script>

<script>
    var app = angular.module('academia', ['ngMessages','satellizer','ngFileUpload','toastr']);
app.controller('angLmsController', function($scope, $http,Upload) {


    {{--console.log({{URL::current()}});--}}


    $scope.uploadImage = function($files) {
        var file = $files[0];
        $('#progressbar').show();
        Upload.upload({
            url: '{{URL::current()}}/../upload_image',
            dataType:"json",
            file: file,
            method:"POST",
            headers: {'Content-Type': undefined }
        }).progress(function (e)
        {
            var progress = (e.loaded / e.total) * 100;
            $("#progressbar_2").css('width',progress+'%');
        }).then(function (response, status, headers, config) {
            console.log(response.data);
            $scope.file_name = response.data.file;
            $('#progressbar').hide();
            //$('#upload1').css({pointerEvents: "initial"});
            $('#upload1').val('');
        });
    }

    $scope.uploadLMS = function($files) {
        var file = $files[0];
        $('#progressbar2').show();
        Upload.upload({
            url: '{{URL::current()}}/../upload_lms',
            dataType:"json",
            file: file,
            method:"POST",
            headers: {'Content-Type': undefined }
        }).progress(function (e)
        {
            var progress = (e.loaded / e.total) * 100;
            $("#progressbar2_2").css('width',progress+'%');
        }).then(function (response, status, headers, config) {
            console.log(response.data);
            $scope.file_name2 = response.data.file;
            $scope.file_show2 = "{{PREFIX}}"+"uploads/lms/content/"+response.data.file;
            $('#progressbar2').hide();
            //$('#upload1').css({pointerEvents: "initial"});
            $('#upload2').val('');
        });
    }
        
    $scope.initAngData = function(data) {
        if(data=='')
        {
            $scope.series = '';
            $scope.content_type = '';
            return;
        }
         data = JSON.parse(data);
         $scope.content_type    = data.content_type;
    }
});
 
</script>