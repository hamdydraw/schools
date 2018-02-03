<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<div id="DivIdToPrint">
    @for($std=0; $std < count($users_list);$std++)
        <table cellpadding="10" width="740" cellspacing="0" border="0" align="center" @if($lang==1) dir="rtl"
               @else dir="ltr" @endif>
            <tr>
                <td width="50%" valign="top">
                    <div style="border:1px solid #aaa; border-radius: 10px; padding:15px; min-height: 470px;">
                        <table cellpadding="0" width="100%" cellspacing="0" border="0"
                               style="font-family: sans-serif;  font-size: 14px; color: #999; line-height:24px;">
                            <tr>
                                <td align="center" style="padding: 5px 10px; ">
                                    <img src="{{IMAGE_PATH_SETTINGS.getSetting('template_1_logo', 'id_card_settings')}}"
                                         height="50" alt="">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="padding: 5px 10px; ">
                                    <h1 style="font-size: 24px; margin: 0;color: #0870b6;">{{getSetting('institute_title','id_card_settings')}}</h1>

                                    <p style="margin: 0;">
                                        <strong>{{getSetting('institute_address','id_card_settings') }}</strong>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <img src="{{getProfilePath($users_list[$std]['image'],'profile')}}" width="120"
                                         alt="">
                                    <h2 style="font-size: 18px; margin: 0;color: #020230;">{{$users_list[$std]['name']}}</h2>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="padding:0 10px;">
                                    <table cellpadding="0" width="100%" cellspacing="0" border="0"
                                           style="font-family: sans-serif;  font-size: 12px; color: #999; line-height:18px;">
                                        @for($i=0; $i< $settings['31-front_total_fields']['value'];$i++)
                                            @if($i == count($front))
                                                @break;
                                            @endif
                                            @if($settings[$front[$i]]['value'] !== 'skip')
                                                <tr>
                                                    <td width="50%" style="padding:3px"><span
                                                                style="color: darkslategrey;">
                                                     {{getPhrase($settings[$front_title[$i]]['value'])}}
                                                            &nbsp;:</span>
                                                        <strong> {{$users_list[$std][$settings[$front[$i]]['value']]}}</strong>
                                                    </td>
                                                </tr>
                                            @endif
                                        @endfor
                                        <tr>
                                            <td align="right"><img
                                                        src="{{IMAGE_PATH_SETTINGS.getSetting('right_sign_image','certificate')}}"
                                                        width="80" alt="">

                                                <br/><b style="font-size:16px;">Principal</b>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>

                <td width="50%" valign="top">
                    <div style="border:1px solid #aaa; border-radius: 10px;
                padding:15px; min-height: 470px;">
                        <table
                                cellpadding="0" width="100%"
                                cellspacing="0" border="0"
                                style="font-family: sans-serif;
                    font-size: 14px; color: #999; 
                    line-height:24px;margin-bottom: 140px;">
                            <tr>
                                <td align="center" style="padding: 5px 10px; ">
                                    <img src="{{IMAGE_PATH_SETTINGS.getSetting('template_1_logo', 'id_card_settings')}}"
                                         height="50" alt="">
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="padding:0 10px;">
                                    <table cellpadding="0" width="100%" cellspacing="0" border="0"
                                           style="font-family: sans-serif;  font-size: 14px; color: #999; line-height:18px;">
                                        @for($i=0; $i<count($back_title) ;$i++)
                                            @if($settings[$back_title[$i]]['value'] !== '')
                                                <tr>
                                                    <td style="padding: 8px;">
                                                        <p style="color: darkslategrey; margin-bottom:0;">
                                                            <strong>{{getPhrase($settings[$back_title[$i]]['value'])}}</strong>
                                                        </p>
                                                        {{$settings[$back[$i]]['value']}}
                                                    </td>
                                                </tr>
                                            @endif
                                        @endfor
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>

            </tr>

        </table>
    @endfor
</div>
</body>

</html>