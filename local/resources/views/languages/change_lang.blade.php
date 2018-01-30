@extends($layout)
@section('header_scripts')
    <link href="{{CSS}}ajax-datatables.css" rel="stylesheet">
@stop
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a> </li>
                        <li>{{ $title }}</li>
                    </ol>
                </div>
            </div>

            <div class="panel panel-custom">
                <div class="panel-body packages">
                    <div>
                        <table class="table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                            <tr>

                                <th>{{ getPhrase('language')}}</th>
                                <th>{{ getPhrase('code')}}</th>
                                <th>Is RTL</th>
                                <th id="helper_step2">{{ getPhrase('default_language')}}</th>
                                <th id="helper_step3">{{ getPhrase('action')}}</th>

                            </tr>
                            </thead>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection


@section('footer_scripts')

    @include('common.datatables', array('route'=>'languages.dataTable'))
    @include('common.deletescript', array('route'=>URL_LANGUAGES_DELETE))

@stop