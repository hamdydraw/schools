@extends($layout)
@section('header_scripts')
    <link href="//cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
@stop
@section('content')

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{url('/')}}"><i class="mdi mdi-home"></i></a> </li>
                        <li>{{ $title }}</li>
                    </ol>
                </div>
            </div>

            <!-- /.row -->
            <div class="panel panel-custom">
                <div class="panel-heading">
                    <h1>{{ $title }}</h1>
                </div>
                <div class="panel-body packages">
                    <div >
                        <table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>{{ getPhrase('name')}}</th>
                                <th>{{ getPhrase('academic_year')}}</th>
                                <th>{{ getPhrase('total')}}</th>
                                <th>{{ getPhrase('payed')}}</th>
                                <th>{{ getPhrase('remained')}}</th>
                                <th>{{ getPhrase('expenses')}}</th>
                                <th>{{ getPhrase('created_at')}}</th>
                                <th>{{ getPhrase('updated_at')}}</th>
                                <th>{{ getPhrase('action')}}</th>
                            </tr>
                            </thead>

                        </table>
                    </div>


                </div>

            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
@endsection

<?php $url = URL_PARENT_CHILDREN_GETLIST_EXPENSES;

?>
@section('footer_scripts')
    @include('common.datatables', array('route'=>$url, 'route_as_url' => TRUE))

@stop
