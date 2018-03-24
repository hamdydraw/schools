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
            <?php
            if (isset($dues_purchase)) {
                $specifications = json_decode($dues_purchase->specifications, true);
            }
            ?>
            {{ Form::open(array('url' => 'parent/purchase-expenses/pay/'.$slug, 'method'=>'post')) }}
            {{csrf_field()}}
            @if(isset($schoolExpenses) and count($schoolExpenses) > 0)
                @foreach($schoolExpenses as $expense)
                    <input type="checkbox" id="{{$expense->id}}" class="expenses" name="expenses[]"
                           @if(isset($dues_purchase) and in_array($expense->title,$specifications['dues_title'])) checked=""
                           disabled
                           @endif value="{{$expense->due_value.'/'.$expense->title}}">
                    <label for="{{$expense->id}}">
                        <span class="fa-stack checkbox-button"> <i class="mdi mdi-check active"></i> </span> <b
                                style="color: red;">{{$expense->title}}</b> {{'  '.getPhrase('and_his_value_is').'   '}}
                        <b style="color: red;">{{$expense->due_value}}</b>
                    </label>
                    <br><span
                            class="text-danger">@if($expense->due_type == 'mandatory'){{ getPhrase('mandatory')}}@endif</span>
                    <br><span
                            class="text-danger">@if(isset($dues_purchase) and in_array($expense->title,$specifications['dues_title'])) {{ getPhrase('payed_before')}}@endif</span>
                    <br><br>
                @endforeach
            @endif
            <h3>{{getPhrase('total')}}: <span id="total">0</span></h3>
            <div class="row">
                <fieldset class="form-group col-md-3">
                    {{ Form::label('your_money', getphrase('your_money')) }}
                    <span class="text-red">*</span>
                    {{ Form::number('your_money', $value = null , $attributes = array('class'=>'form-control','required'=>'required','placeholder' => getPhrase('your_money'),'id'=>'your_money')) }}
                </fieldset>
            </div>
            @if(Module_state('coupons'))
                <div class="row">
                    <fieldset class="form-group col-md-3">
                        {{ Form::label('coupon', getphrase('coupon')) }}
                        <span class="text-red">*</span>
                        {{ Form::number('coupon', $value = null , $attributes = array('class'=>'form-control','placeholder' => getPhrase('coupon'),'id'=>'coupon')) }}
                    </fieldset>
                </div>
            @endif
            <input type="hidden" value="" id="gateway" name="gateway">
            <div style="margin-right: 300px;">
                @if(!isset($dues_purchase) or (isset($dues_purchase) and isset($schoolExpenses) and count($specifications['dues_title']) != count($schoolExpenses)))
                    @if($settingsModule->payu->value == 1)

                        <button type="submit"
                                class="btn-lg btn button btn-card" id="payu"><i
                                    class=" icon-credit-card"></i> {{getPhrase('payu')}}</button>
                    @endif

                    @if($settingsModule->paypal->value == 1)
                        <button type="submit" class="btn-lg btn button btn-paypal" id="paypal"><i
                                    class="icon-paypal"></i> {{getPhrase('paypal')}}</button>
                    @endif
                    @if($settingsModule->offline_payment->value == 1)
                        <button type="submit" class="btn-lg btn button btn-info"
                                title="{{ getPhrase('click_here_to_update_payment_details') }}"><i
                                    class="fa fa-money"></i> {{getPhrase('offline_payment')}}
                        </button>

                    @endif
                @endif
            </div>
            {{ Form::close() }}
        </div>
    </div>
@stop
@section('footer_scripts')
    @include('Dues.js-script',array('total'=>$total))
@stop
