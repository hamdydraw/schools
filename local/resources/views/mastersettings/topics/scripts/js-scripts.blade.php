<script src="{{JS}}angular.js"></script>
<script src="{{JS}}angular-messages.js"></script>
<script src="{{JS}}select2.js"></script>
<script>

    var app = angular.module('academia', ['ngMessages','satellizer']);


    app.controller('angTopicsController', function ($scope, $http) {

        $scope.academic_courses_sc  = [];
        $scope.current_course_sc    = {{$record_course_id}};
        $scope.current_course_sc    = $scope.current_course_sc.toString();

        $scope.getCourses = function () {
            $http({
                method:"GET",
                url:'{{PREFIX}}'+'get_courses',
                dataType:"json",
                headers:{'Content-Type': 'application/x-www-form-urlencoded'}
            })
                .then(function (response) {
                    $scope.academic_courses_sc = response.data;
                })
        }
        $scope.getCourses();
        /**
         * Gets the no. of years based on the dueration for that course
         * @return {[type]} [description]
         */
        $scope.getSubjectParents = function () {
            subject_id = $('#subject').val();
            route = '{{URL_TOPICS_GET_PARENT_TOPICS}}';


            data = {_method: 'post', '_token': $scope.getToken(), 'subject_id': subject_id};

            $http.post(route, data).success(function (result, status) {
                /*
                | Pouplate the subject parents based on selected subject
                 */
                $('#parent').empty();
                for (i = 0; i < result.length; i++)
                    $('#parent').append('<option value="' + result[i].id + '">' + result[i].text + '</option>');
            });
        }

        /**
         * Returns the token by fetching if from from form
         *
         */
        $scope.getToken = function () {
            return $('[name="_token"]').val();
        }

    });


    /**
     * Intilize select by default
     */
    $('.select2').select2({
        placeholder: "Select",
    });

    function getSubjectParents() {
        route = '/mastersettings/topics/get-parents-topics/' + $('#subject').val();
        var token = $('[name="_token"]').val();
        data = {_method: 'get', '_token': token};

        $.ajax.get(route, data).success(function (result, status) {
            /*
            | Pouplate the subject parents based on selected subject
             */
            $('#parent').empty();
            for (i = 0; i < result.length; i++)
                $('#parent').append('<option value="' + result[i].id + '">' + result[i].text + '</option>');
        });
    }


    function getSubjectParents(semester,topicName) {
        subject_id = $('#subject').val();
        route = '{{URL_TOPICS_GET_PARENT_TOPICS}}' + subject_id;

        var token = $('[name="_token"]').val();


        data = {_method: 'get', '_token': token, 'subject_id': subject_id, 'semester': semester};

        $.ajax({
            url: route,
            dataType: 'json',
            data: data,
            success: function (result) {
                $('#parent').empty();
                for (i = 0; i < result.length; i++)
                    if(topicName != null && topicName === result[i].text) {
                        $('#parent').append('<option value="' + result[i].id + '" selected>' + result[i].text + '</option>');
                    }else{
                        $('#parent').append('<option value="' + result[i].id + '">' + result[i].text + '</option>');
                    }
            }
        });
    }

    function getSubjectsParentsFromTopic(topicName) {
        getSubjectParents($('#semesters').val(),topicName)
    }

</script>
<script>
    $(document).ready(function () {
        if ($('#subject').val() != '') {
            getSubjectsParentsFromTopic('<?php echo $topic_name?>');
        }

    })

</script>

