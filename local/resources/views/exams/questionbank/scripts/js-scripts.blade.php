<script src="{{JS}}angular.js"></script>
<script src="{{JS}}angular-messages.js"></script>
<script src="{{JS}}ng-file-upload.js"></script>
<script src="{{JS}}angular-toastr.min.js"></script>
<script src="{{JS}}angular-toastr.tpls.min.js"></script>

<script>
var app = angular.module('academia', ['ngMessages','satellizer','ngFileUpload','toastr']);
app.controller('questionsController', function($scope, $http,Upload,toastr) {





    $scope.file_name = null;

    $scope.uploadImage = function($files) {
        var file = $files[0];
        $('#progressbar').show();
        Upload.upload({
            url: '{{URL::current()}}/../../upload',
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
            if(response.data.state == "failed"){
                toastr.error(response.data.desc, 'Error');
            }
            if(response.data.state == "success"){
                toastr.success(response.data.desc);
            }
            $scope.file_show = "{{ EXAM_UPLOADS}}"+response.data.file;
            $scope.file_name = response.data.file;
            $('#progressbar').hide();
            //$('#upload1').css({pointerEvents: "initial"});
            $('#upload1').val('');
        });
    }

    $scope.initAngData = function(data) {
      
         if(data=='')
        {
 
            return;
        }
                  
        data=JSON.parse(data);
  
        
        $scope.question_type = data.question_type;
        $scope.correct_answers = data.correct_answers;
        $scope.total_correct_answers = parseInt(data.total_correct_answers);
        
        if(data.question_type=='blanks')
        {
        }

        if(data.question_type=='radio')
        {
            $scope.answers = data.answers;
        }

        if(data.question_type=='checkbox')
        {
            $scope.answers = data.answers;
            $scope.correct_answers = data.correct_answers;
        }
        if(data.question_type=='match')
        {

            $scope.answers = data.answers;
            $scope.correct_answers = data.correct_answers;
        }

        if(data.question_type=='para' || data.question_type=='video' || data.question_type=='audio' ) 
        {

            $scope.answers = data.answers;
            $scope.correct_answers = data.correct_answers;
        }

    }

     $scope.range = function(count) {
        var range = []; 
        for (var i = 0; i < count; i++) { 
          range.push(i) 
        } 
        return range;
    }

    $scope.answersChanged = function(selected_number) {
        $scope.total_answers = selected_number;

    }
    $scope.correctAnswersChanged = function(selected_number) {
        $scope.total_correct_answers = selected_number;

    }
    $scope.paraOptionsChanged = function(selected_number) {
        $scope.total_para_options = selected_number;

    }
    
    $scope.getToken = function(){
      return  $('[name="_token"]').val();
    }
    
});
</script>