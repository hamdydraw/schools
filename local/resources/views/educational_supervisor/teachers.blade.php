@extends($layout)
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb">
                        <li><a href="{{PREFIX}}"><i class="mdi mdi-home"></i></a></li>

                        <li><a href="">{{$title}}</a></li>
                    </ol>
                </div>
            </div>
            <div class="panel panel-custom">
                <div class="panel-body packages">
                    <div>
                        <table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
                            <thead>
                            <tr>

                                <th id="helper_step2">{{ getPhrase('teacher_name')}}</th>
                                <th id="helper_step3">{{ getPhrase('action')}}</th>

                            </tr>
                            </thead>

                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('footer_scripts')
    @include('common.datatables', array('route'=>'teachers.dataTable'))
@stop



