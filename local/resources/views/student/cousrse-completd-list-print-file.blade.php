<!DOCTYPE html>
<html lang="en" dir="{{ (App\Language::isDefaultLanuageRtl()) ? 'rtl' : 'ltr' }}">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="assets/images/favicon.ico">
    <title>{{$title}}</title>

    <link rel="stylesheet" href="{{CSS}}Report/font-icons/entypo/css/entypo.css">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
    <link rel="stylesheet" href="{{CSS}}Report/bootstrap.css">
    <link rel="stylesheet" href="{{CSS}}Report/neon-core.css">
    <link rel="stylesheet" href="{{CSS}}Report/neon-theme.css">
    @if(Session::has('lang_dir') && Session::get('lang_dir') == 1 )
        <link rel="stylesheet" href="{{CSS}}Report/neon-rtl.css">
    @endif
</head>
<body class="page-body">

<div class="page-container">

    <div class="main-content">

        <br class="hidden-print" />

        <div class="invoice">

            <div class="row">

                <div class="col-sm-4 invoice-right" style="text-align: right">
                    <h3>{{getSetting('site_title','site_settings')}}</h3>
                </div>

                <div class="col-sm-4 invoice-left pull-left" style="text-align: left">
                    <a href="#">
                        <img src="{{IMAGE_PATH_SETTINGS.getSetting('site_logo', 'site_settings')}}" width="195" style="margin-left: 80px;" alt="" />
                    </a>
                </div>

                <div class="col-sm-4 pull-right" style="text-align: left">

                    <h3>{{$title}}</h3>
                </div>





            </div>


            <hr class="margin" />


            <div class="margin"></div>

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th style="border:1px solid #000;">{{getPhrase('sn')}}</th>
                    <th style="border:1px solid #000;">{{getPhrase('name')}}</th>
                    <th style="border:1px solid #000;">{{getPhrase('roll_no')}}</th>
                    <th style="border:1px solid #000;">{{getPhrase('course')}}</th>
                    <th style="border:1px solid #000;">{{getPhrase('status')}}</th>
                </tr>
                </thead>

                <tbody>
                <?php $sno =1;?>
                @foreach($records as $record)
                    <tr>

                        <td style="border:1px solid #000;">{{$sno++}}</td>
                        <td style="border:1px solid #000;">{{$record['name']}}</td>
                        <td style="border:1px solid #000;">{{$record['roll_no']}}</td>
                        <td style="border:1px solid #000;">{{$record['course_title']}}</td>
                        <td style="border:1px solid #000;">{{getPhrase('completed')}}</td>


                    </tr>
                @endforeach
                </tbody>
            </table>

            <div class="margin"></div>

            <div class="row">

                <div class="col-sm-12">

                    <div class="invoice-right">
                        <br />

                        <a href="javascript:window.print();" class="btn btn-primary btn-icon icon-left hidden-print">
                            {{getphrase('print_and_export')}}
                            <i class="entypo-doc-text"></i>
                        </a>
                    </div>

                </div>

            </div>

        </div>
        <!-- Footer -->

    </div>

</div>


</body>
</html>

