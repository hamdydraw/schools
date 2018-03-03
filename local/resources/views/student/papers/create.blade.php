@extends($layout)
@section('header_scripts')
    <link href="{{CSS}}ajax-datatables.css" rel="stylesheet">
@stop
<style>
    .progressbar {
        background-color: black;
        border-radius: 13px; /* (height of inner div) / 2 + padding */
        padding: 3px;
        margin-top: 7%;
    }
    .progressbar_2{
        background-color: orange;
        width: 0%; /* Adjust with JavaScript */
        height: 20px;
        border-radius: 10px;
    }
</style>
@section('content')
    <div id="page-wrapper" ng-controller="student_papers">
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb">
                    <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a></li>
                    <li><a href="{{PREFIX}}users/student">{{ getPhrase('students')}}</a></li>
                    <li class="active">{{isset($title) ? $title : ''}}</li>
                </ol>
            </div>

            @include('errors.errors')

            <div class="panel panel-custom">
                <div class="panel-heading">
                    <div class="pull-right messages-buttons helper_step2">
                        <a href="{{PREFIX}}users/student"
                           class="btn  btn-primary button">{{ getPhrase('list')}}</a>
                    </div>
                    <h1>{{ $title }}  </h1>
                </div>
            </div>

            <div class="panel-body form-auth-style" id="app" style="display: none">
                {{ Form::model($records,array('url' => PREFIX.'student/papers/update/'.$user->slug,'method'=>'post','name'=>'formAcademics ', 'novalidate'=>'')) }}
                <div class="row">
                    <fieldset class="form-group col-md-6">
                        <a id="add-semester" ng-click="add_filled()" class="btn btn-primary">{{getphrase('add_document')}}</a>
                    </fieldset>
                </div>
                <div class="row show" ng-repeat="item in items" style="padding-bottom: 2%">
                    <div class="col-md-3">
                        <fieldset class="form-group">
                            <label for="name">{{getPhrase('name')}}</label>
                            <span class="text-red">*</span>
                            <input class="form-control" placeholder="{{getPhrase('name')}}" name="name[]" type="text" ng-model="item.name" required>
                        </fieldset>
                    </div>
                    <div class="col-md-2">
                        <fieldset class="form-group">
                            <label for="name">{{getPhrase('file_type')}}</label>
                            <span class="text-red">*</span>
                            <select class="form-control"  name="type[]" id="" ng-model="item.type" required>
                                <option value="document">{{getPhrase('document')}}</option>
                                <option value="image">{{getPhrase('image')}}</option>
                                <option value="video">{{getPhrase('video')}}</option>
                            </select>
                        </fieldset>
                    </div>
                    <div class="col-md-2">
                        <label for="file">{{getPhrase('file')}}</label>
                        <span class="text-red">*</span>
                        <input ng-if="item.type == 'document'" type="file" class="form-control filer" ngf-select="file_upload($files,item)" accept=".xlsx,.docx,.pdf">
                        <input ng-if="item.type == 'image'"  type="file" class="form-control filer" ngf-select="file_upload($files,item)" accept="image/x-png,image/png,image/jpeg">
                        <input ng-if="item.type == 'video'" type="file" class="form-control filer" ngf-select="file_upload($files,item)" accept=".mp4">
                        <input type="hidden" ng-model="item.file" value="@{{item.file}}"  name="file[]" required>
                    </div>
                    <div class="col-md-1">
                        <button type="button" ng-click="delete_item(item)" class="btn btn-danger" style="margin-top: 33%;">{{getPhrase('delete')}}</button>
                    </div>
                    <div class="col-md-4">
                        <div class="progressbar @{{ item.id }}" style="display: none;">
                            <div class="progressbar_2" id="@{{item.id}}"></div>
                        </div>
                        <div ng-if="item.type == 'image' && item.file != ''">
                            <img src="{{IMAGE_PATH_UPLOAD_STUDENT_PAPERS}}@{{ item.file }}" width="200" height="120" alt="">
                        </div>
                        <div ng-if="item.type == 'video' && item.file != ''">
                            <video width="200" height="120" controls>
                                <source src="@{{ item.video }}">
                            </video>
                        </div>
                        <div ng-if="item.type == 'document' && item.file != ''">
                            <a href="{{IMAGE_PATH_UPLOAD_STUDENT_PAPERS}}@{{ item.file }}" download>
                                <img border="0" src="{{PREFIX}}images/document.jpg" alt="W3Schools" width="200" height="120">
                            </a>
                        </div>
                    </div>
                    <br><br><br>
                </div>
                <div class="buttons text-center">
                    <button type="submit" class="btn btn-lg btn-primary button" ng-disabled="formAcademics.$invalid">{{getPhrase('Edit')}}</button>
                </div>
                {!! Form::close() !!}
            </div>

        </div>
    </div>
@endsection
@include('student.papers.script')
@section('footer_scripts')
@stop