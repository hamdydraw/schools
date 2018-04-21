<script src="{{JS}}angular.js"></script>
<script src="{{JS}}angular-messages.js"></script>
<script src="{{JS}}ng-file-upload.js"></script>
<script src="{{JS}}angular-toastr.min.js"></script>
<script src="{{JS}}angular-toastr.tpls.min.js"></script>
<script src="{{JS}}satellizer.min.js"></script>

<script>
    var app = angular.module('academia', ['ngMessages','satellizer','ngFileUpload','toastr']);
app.controller('angLmsController', function($scope, $http,Upload) {

    $scope.current_course_sc    = null;
    $scope.current_subject_sc   = null;
    $scope.academic_courses_sc  = [];
    $scope.academic_subjects_sc = [];


    $scope.first_time = true;

    $scope.current_year_sc = {{default_year()}};
    $scope.current_year_sc = $scope.current_year_sc.toString();



    $scope.lastPart = window.location.href.split("/").pop();

    $scope.ifEdit = function () {
        if($scope.lastPart != 'add' && $scope.lastPart != 'content'){
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'/get_lms_content/'+$scope.lastPart,
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    console.log(response.data);
                    $scope.current_year_sc    = response.data.academic_id.toString();
                    $scope.current_sem_sc     = response.data.sem_id.toString();
                    $scope.current_course_sc  = response.data.course_id.toString();
                    $scope.current_subject_sc = response.data.subject_id.toString();
                    $scope.topic_id_sc    = response.data.topic_id.toString();
                    $http({
                        method:"GET",
                        url:'{{PREFIX}}'+'get_subjects/'+$scope.current_year_sc+'/'+$scope.current_sem_sc+'/'+$scope.current_course_sc,
                        dataType:"json",
                        headers:{'Content-Type': 'application/x-www-form-urlencoded'}
                    })
                        .then(function (response) {
                            $scope.academic_subjects_sc = response.data;
                            $http({
                                method: "GET",
                                url: '{{PREFIX}}' + 'get_toopy/' + $scope.current_course_sc + '/' + $scope.current_subject_sc + '/' + $scope.current_sem_sc ,
                                dataType: "json",
                                headers: {'Content-Type': 'application/x-www-form-urlencoded'}
                            })
                                .then(function (response) {
                                    $scope.topics_sc = response.data;
                                })
                        });

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
                $scope.current_sem_sc  = "1";
                $scope.getCourses();
            })
    }
    $scope.getYears();

    $scope.getCourses = function () {
        $http({
            method:"GET",
            url:'{{PREFIX}}'+'get_courses/'+$scope.current_year_sc,
            dataType:"json",
            headers:{'Content-Type': 'application/x-www-form-urlencoded'}
        })
            .then(function (response) {
                $scope.academic_courses_sc = response.data;
                if(response.data.length != 0){
                    $scope.current_course_sc   = response.data[0].id.toString();
                    $scope.getSubjects();
                }
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
                if(response.data.length != 0) {
                    $scope.current_subject_sc = response.data[0].subject_id.toString();
                }
                $scope.get_topics();

            })
    }

    $scope.get_topics = function () {
        $http({
            method: "GET",
            url: '{{PREFIX}}' + 'get_toopy/' + $scope.current_course_sc + '/' + $scope.current_subject_sc + '/' + $scope.current_sem_sc ,
            dataType: "json",
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
            .then(function (response) {
                $scope.topics_sc = response.data;
                angular.forEach($scope.topics_sc,function(item){
                    if(item.parent_id == 0){
                        item.topic_name = "- "+item.topic_name;
                    }
                });
                if($scope.topics_sc.length != 0)
                {
                    $scope.topic_id_sc = $scope.topics_sc[0].id.toString();
                }
                if($scope.first_time){
                    $scope.ifEdit();
                    $scope.first_time = false;
                }
            })
    }

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

    $scope.toTable = function () {

        angular.forEach($scope.academic_years_sc,function (item) {
            if(item.id == $scope.current_year_sc){
                $scope.year_slug =  item.slug;
            }
        })

        angular.forEach($scope.academic_sems_sc,function (item) {
            if(item.value == $scope.current_sem_sc){
                $scope.sem_slug =  item.value;
            }
        })

        angular.forEach($scope.academic_courses_sc,function (item) {
            if(item.id == $scope.current_course_sc){
                $scope.course_slug =  item.slug;
            }
        })

        angular.forEach($scope.academic_subjects_sc,function (item) {
            if(item.subject_id == $scope.current_subject_sc){
                $scope.subject_slug =  item.slug;
            }
        })
        window.location.href = "{{PREFIX}}lms/content/view/"+$scope.year_slug+"/"+$scope.sem_slug+"/"+$scope.course_slug+"/"+$scope.subject_slug;
    }

});


 
</script>