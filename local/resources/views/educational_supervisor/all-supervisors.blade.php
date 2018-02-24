@extends($layout)

@section('content')
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 50%;
            margin-top: 60px;
            margin-right: 350px;
            text-align: center;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #customers tr:hover {
            background-color: #ddd;
        }

        #customers th {
            text-align: center;
            background-color: #4CAF50;
            color: white;
        }
    </style>
    <table id="customers">
        <tr>
            <th>
                {{getPhrase('supervisor_name')}}</th>
            <th>{{getPhrase('action')}}</th>
        </tr>
        @foreach($supervisors as $supervisor)
            <tr>
                <td>{{$supervisor->name}}</td>
                <td>
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">---
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="{{url('mastersettings/supervisor/assign-staff/'.$supervisor->slug)}}">{{getPhrase('assign_teachers')}}</a>
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
        @endforeach
    </table>
@stop

@section('footer_scripts')


@stop
