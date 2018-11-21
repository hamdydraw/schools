<html lang="en" dir="rtl">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>{{$title}}</title>

    <link rel="stylesheet" href="{{PREFIX}}css/Report/font-icons/entypo/css/entypo.css">
    <link rel="stylesheet" href="{{PREFIX}}css/font-awesome.css"/>
    <link rel="stylesheet" href="{{PREFIX}}css/Report/bootstrap.css">
    <link rel="stylesheet" href="{{PREFIX}}css/Report/neon-core.css">
    <link rel="stylesheet" href="{{PREFIX}}css/Report/neon-theme.css">
    <link rel="stylesheet" href="{{PREFIX}}css/Report/neon-rtl.css">
    <style>
        @media  print {
            .head th {
                background-color: #91919a !important;
                color:white !important;
                -webkit-print-color-adjust: exact;
            }}
    </style>
</head>

@section('header_scripts')


@endsection
<div class="container" id="main_frame">
    <div class="row">
        <center>
            <img style="width: 100%;" src="{{IMAGE_PATH_SETTINGS}}{{\App\Settings::get_att_logo()}}">
        </center>

    </div>
    <div class="row" style="font-size: 15px;">
        <div style="float: right;">
            <span>{{$print_year}} - {{getPhrase($print_term)}} - {{$print_course}} - {{$print_class}} - {{$print_quiz}}</span>
        </div>
        <div style="float: left;">
            <span>{{\Carbon\Carbon::now()->format('d-m-Y')}}</span>
        </div>
    </div>
    <div class="row">
        <center>
            <table class="table  table-bordered table-dark" style="font-size: 20px;
    border-spacing: 0;    margin-top: 5%;" border="1">
                <thead>
                <th style="border:1px solid #000;">{{getPhrase('name')}}</th>
                <th style="border:1px solid #000;">{{getPhrase('result')}}</th>
                </thead>
                @foreach($results as $result)
                    <tr>
                        <td style="border:1px solid #000;">{{$result->name}}</td>

                        <td style="border:1px solid #000;"><p>{{$result->marks_obtained}} / {{ $result->total_marks }}</p></td>

                    </tr>
                @endforeach
            </table>
        </center>

    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="invoice-right">
                <br>
                <a href="javascript:window.print();" class="btn btn-primary btn-icon icon-left hidden-print">
                    {{getPhrase('print')}}
                    <i class="fa fa-print"></i>
                </a>
            </div>

        </div>

    </div>
</div>
</html>

<script type="text/javascript">
    var replaceDigits = function() {
        var map =
            [
                "&\#1632;","&\#1633;","&\#1634;","&\#1635;","&\#1636;",
                "&\#1637;","&\#1638;","&\#1639;","&\#1640;","&\#1641;"
            ];
        document.body.innerHTML = document.body.innerHTML.replace(/\d(?=[^<>]*(<|$))/g, function($0) { return map[$0]});
    }
    dir = document.getElementsByTagName("html")[0].getAttribute("dir");
    if(dir == 'rtl'){
        window.onload = replaceDigits;
    }

</script>
