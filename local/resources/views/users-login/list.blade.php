@extends(getLayout())

@section('header_scripts')
    <link href="{{CSS}}ajax-datatables.css" rel="stylesheet">
    <link href="{{CSS}}sweet-alert.css" rel="stylesheet">
@stop
@section('content')


    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a></li>
                        <li class="active">{{isset($title) ? $title : ''}}</li>
                    </ol>
                </div>
            </div>
            <div class="panel panel-custom">
                <div class="panel-heading">
                    <h1>{{$title}}</h1>
                    <a  class=" btn btn-primary pull-right" href="../userslogged/destroy">{{ getPhrase('delete_all_records')}}</a>
                </div>
                <div class="panel-body packages">
                    <div>
                        <table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                {{--`users_id`, `created_at`, `updated_at`, `updated_by_ip`, `created_by_ip`, `created_by_user`, `updated_by_user`, `record_status`, `table_name`--}}
                                <th>{{ getPhrase('username')}}</th>
                                <th>{{ getPhrase('user_number')}}</th>
                                <th>{{ getPhrase('created_at')}}</th>
                                <th>{{ getPhrase('user_ip')}}</th>
                                <th>{{ getPhrase('user_type')}}</th>
                            </tr>
                            </thead>

                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>

@endsection
@include('trashes.script')
@section('footer_scripts')
    @include('common.datatables', array('route'=>URL_LOGGED_DATABLE, 'route_as_url' => TRUE))
    @include('trashes.delete_script')
@stop