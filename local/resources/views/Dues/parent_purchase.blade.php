@extends($layout)
@section('content')
    <?php $due_types = array('select', 'mandatory', 'optional'); ?>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <ol class="breadcrumb">
                    <li><a href="{{url('/')}}"><i class="mdi mdi-home"></i></a></li>
                    <li><a href="{{url('parent/children')}}">{{getPhrase('children')}}</a></li>
                    <li>{{$title}}</li>
                    <li>{{$record->name}}</li>
                </ol>
            </div>
        </div>
        <div class="container-fluid" style="margin-top: 50px; margin-right: 200px;">
            @if(isset($schoolExpenses) and count($schoolExpenses) > 0)
                @foreach($schoolExpenses as $expens)
                    <input type="checkbox" id="{{$expens->id}}" class="expenses"
                           @if($expens->due_type == 'mandatory') checked="" disabled
                           @endif value="{{$expens->due_value}}">
                    <label for="{{$expens->id}}">
                        <span class="fa-stack checkbox-button"> <i class="mdi mdi-check active"></i> </span> <b
                                style="color: red;">{{$expens->title}}</b> {{'  '.getPhrase('and_his_value_is').'   '}}
                        <b style="color: red;">{{$expens->due_value}}</b>
                    </label>
                    <br><span class="text-danger">{{ getPhrase('this_must_be_paid')}}</span><br><br>
                @endforeach
            @endif
            <h3>{{getPhrase('must_paid')}}: <span id="must-paid">{{$total}}</span></h3>
            <h3>{{getPhrase('total')}}: <span id="total">{{$total}}</span></h3>
            <div style="margin-right: 300px;">
                @if($settingsModule->payu->value == 1)

                    <button type="submit"
                            class="btn-lg btn button btn-card"><i
                                class=" icon-credit-card"></i> {{getPhrase('payu')}}</button>
                @endif

                @if($settingsModule->paypal->value == 1)
                    <button type="submit" class="btn-lg btn button btn-paypal"><i
                                class="icon-paypal"></i> {{getPhrase('paypal')}}</button>
                @endif
                @if($settingsModule->offline_payment->value == 1)
                    <button type="submit" class="btn-lg btn button btn-info"
                            title="{{ getPhrase('click_here_to_update_payment_details') }}"><i
                                class="fa fa-money"></i> {{getPhrase('offline_payment')}}
                    </button>

                @endif
            </div>
        </div>
    </div>
@stop
@section('footer_scripts')
    @include('Dues.js-script',array('total'=>$total))
@stop
