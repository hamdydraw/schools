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
        @foreach($teachers as $teacher)
            <tr>
                <td>{{$teacher->name}}</td>
                <td>
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">---
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            @if(isset($subjects))
                                <li>
                                    <a href="{{url('supervisor/staff/assign-subject/'.$teacher->slug)}}">{{getPhrase('assign_subject_to_teacher')}}</a>
                                </li>
                            @elseif(isset($topic_plans))
                                <li>
                                    <a href="{{url('supervisor/staff/lesson-plans/'.$teacher->slug)}}">{{getPhrase('topic_plans')}}</a>
                                </li>
                            @elseif(isset($attendance))
                                <li>
                                    <a href="{{url('supervisor/staff/students-attendance/'.$teacher->slug)}}">{{getPhrase('students_attendance')}}</a>
                                </li>
                            @elseif(isset($timetable))
                                <li>
                                    <a href="{{url('supervisor/staff/teacher-timetable/'.$teacher->slug)}}">{{getPhrase('timetable')}}</a>
                                </li>
                            @endif
                        </ul>
                    </div>
                </td>
            </tr>
        @endforeach
    </table>
@stop

@section('footer_scripts')


@stop

