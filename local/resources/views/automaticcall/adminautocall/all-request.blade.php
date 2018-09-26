<link href="{{CSS}}autocall-requests.css" rel="stylesheet">
<meta charset="UTF-8">
<title>{{$title}}</title>
<div id="page-wrapper">
	<div class="panel-heading " >
		<h1>{{ $title }}</h1>
	</div>

	<div class="panel-body packages" ng-app="automaticCall" ng-controller="automaticCallController" ng-init="getRequest({{$requests}})">

		<div class="date_today col-md-8">
			<h2>
				@{{today}}
			</h2>
		</div>
		<div class="clean"></div>
		<div class="requestContainer">
			<ul  id="request">
				<li ng-repeat="request in requests">
					<div class="requestDiv">
						<h3>@{{request.name}}
							<span class="CallTime">@{{ clock | date:'hh:mm'}}</span>
							<button class="exitButton" ng-click="leave(request.request_id,$index)" >{{ getPhrase('exit')}}</button><!-- ng-hide="request.isCalled" -->
						</h3>
					</div>
				</li>
			</ul>
		</div>

		<div class="DetailContainer">
			<div class="stDetailContainer" ng-show="!isStudent" >
				<img ng-if="studentInfo.image!=null && studentInfo.image!=''" class="thumb"
				src="{{IMAGE_PATH_PROFILE}}@{{studentInfo.image}}" >

				<img ng-if="studentInfo.image==null || studentInfo.image==''" class="thumb" 
				src="{{IMAGE_PATH_USERS_DEFAULT_THUMB}}">
				<div class="stName col-md-8">
					@{{studentInfo.name}}
				</div>
				<div class="stCourse col-md-8" >
					@{{studentInfo.course_parent_id}}
				</div>
				<div class="stClass col-md-8">
					@{{studentInfo.course_id}}
				</div>
				<div class="callTime col-md-8">
					@{{ clock | date:'hh:mm'}}
				</div>
			</div>
		</div>

	</div>
</div>

@include('automaticcall.adminautocall.js-script')
