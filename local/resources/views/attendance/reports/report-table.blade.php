

<html lang="en" dir="rtl">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>2018-2019 أول أ قائمة</title>

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
            <img src="{{IMAGE_PATH_SETTINGS}}{{\App\Settings::get_att_logo()}}">
        </center>

    </div>
    <div class="row">
        <center>
            <h3>{{getPhrase('Attendance_report_and_departure_from_the_period')}} {{$start_date}} {{getPhrase('Corresponding')}} ({{$hijri_start}}) {{getPhrase('to')}} {{$finish_date}} {{getPhrase('Corresponding')}} ({{$hijri_end}})</h3>
        </center>
    </div>
    <div class="row">
        <center>
            <table class="table  table-bordered table-dark" style="font-size: 20px;
    border-spacing: 0" border="1">
                <thead>
                <th>{{getPhrase('name')}}</th>
                @foreach($period  as $key => $value)
                    <th>{{$value->format('d-m')}}</th>
                @endforeach
                </thead>
                @foreach($records['students'] as $student)
                    <tr>
                        <td>{{str_replace('_', ' ', $student->name)}}</td>
                        @foreach(${$student->name}  as $key => $value)
                            <td><p>{!!  html_entity_decode(change_att_symbols($value))!!}  </p></td>
                        @endforeach
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
                    طباعة وتصدير
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