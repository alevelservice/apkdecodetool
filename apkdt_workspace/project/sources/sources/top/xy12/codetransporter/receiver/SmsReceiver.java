package top.xy12.codetransporter.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import top.xy12.codetransporter.bean.MessageBean;
import top.xy12.codetransporter.conf.AppConf;
import top.xy12.codetransporter.page.MainActivity;

/* loaded from: classes.dex */
public class SmsReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i;
        Log.e("SmsReceiver", "SmsReceiver: ");
        Bundle extras = intent.getExtras();
        int detectSim = detectSim(extras);
        StringBuffer stringBuffer = new StringBuffer();
        Log.d("SmsReceiver", "solt: " + detectSim);
        MessageBean messageBean = new MessageBean();
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("bundle: " + extras.toString()).append("\nsolt: ").append(detectSim).append("\n");
        if (extras != null) {
            try {
                Object[] objArr = (Object[]) extras.get("pdus");
                stringBuffer2.append("pdus: ").append(objArr.toString()).append("=========pdus.length: ").append(objArr.length).append("\n");
                if (objArr != null) {
                    int length = objArr.length;
                    int i2 = 0;
                    while (i2 < length) {
                        SmsMessage createFromPdu = SmsMessage.createFromPdu((byte[]) objArr[i2]);
                        String messageBody = createFromPdu.getMessageBody();
                        String originatingAddress = createFromPdu.getOriginatingAddress();
                        stringBuffer.append(messageBody);
                        String displayMessageBody = createFromPdu.getDisplayMessageBody();
                        String serviceCenterAddress = createFromPdu.getServiceCenterAddress();
                        String displayOriginatingAddress = createFromPdu.getDisplayOriginatingAddress();
                        String emailBody = createFromPdu.getEmailBody();
                        Object[] objArr2 = objArr;
                        String emailFrom = createFromPdu.getEmailFrom();
                        String pseudoSubject = createFromPdu.getPseudoSubject();
                        int i3 = length;
                        int i4 = i2;
                        long timestampMillis = createFromPdu.getTimestampMillis();
                        StringBuilder sb = new StringBuilder();
                        i = detectSim;
                        try {
                            sb.append("messageBody: ");
                            sb.append(messageBody);
                            Log.w("SmsReceiver", sb.toString());
                            Log.w("SmsReceiver", "displayMessageBody: " + displayMessageBody);
                            Log.w("SmsReceiver", "serviceCenterAddress: " + serviceCenterAddress);
                            Log.w("SmsReceiver", "displayOriginatingAddress: " + displayOriginatingAddress);
                            Log.w("SmsReceiver", "number: " + originatingAddress);
                            Log.w("SmsReceiver", "emailBody: " + emailBody);
                            Log.w("SmsReceiver", "emailFrom: " + emailFrom);
                            Log.w("SmsReceiver", "pseudoSubject: " + pseudoSubject);
                            messageBean.setContent(stringBuffer.toString());
                            messageBean.setPhoneNumber(originatingAddress);
                            messageBean.setSenderNumber(originatingAddress);
                            messageBean.setTime(timestampMillis);
                            i2 = i4 + 1;
                            objArr = objArr2;
                            length = i3;
                            detectSim = i;
                        } catch (Exception e) {
                            e = e;
                            stringBuffer2.append(" eeeeeeeeee: ").append(e.getMessage());
                            Log.w("SmsReceiver", "eeeeeeeee: " + e.getMessage());
                            messageBean.setIsShowLog(1);
                            messageBean.setState(0);
                            messageBean.setCard(i);
                            messageBean.setLogInfo(stringBuffer2.toString());
                            Intent intent2 = new Intent(MainActivity.BROAD_ACTION);
                            intent2.putExtra("smsMessage", messageBean);
                            context.sendBroadcast(intent2);
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
                i = detectSim;
            }
        }
        i = detectSim;
        messageBean.setIsShowLog(1);
        messageBean.setState(0);
        messageBean.setCard(i);
        messageBean.setLogInfo(stringBuffer2.toString());
        Intent intent22 = new Intent(MainActivity.BROAD_ACTION);
        intent22.putExtra("smsMessage", messageBean);
        context.sendBroadcast(intent22);
    }

    private int detectSim(Bundle bundle) {
        char c;
        int i = -1;
        for (String str : bundle.keySet()) {
            Log.w("SmsReceiver", "key: " + str);
            str.hashCode();
            switch (str.hashCode()) {
                case -2113270817:
                    if (str.equals("slotIdx")) {
                        c = 0;
                        break;
                    }
                    break;
                case -2113249540:
                    if (str.equals("slot_id")) {
                        c = 1;
                        break;
                    }
                    break;
                case -902288561:
                    if (str.equals("simnum")) {
                        c = 2;
                        break;
                    }
                    break;
                case -899454023:
                    if (str.equals("slotId")) {
                        c = 3;
                        break;
                    }
                    break;
                case 3533310:
                    if (str.equals("slot")) {
                        c = 4;
                        break;
                    }
                    break;
                case 106642798:
                    if (str.equals("phone")) {
                        c = 5;
                        break;
                    }
                    break;
                case 109440082:
                    if (str.equals("simId")) {
                        c = 6;
                        break;
                    }
                    break;
                case 341203229:
                    if (str.equals("subscription")) {
                        c = 7;
                        break;
                    }
                    break;
                case 2093012853:
                    if (str.equals("simSlot")) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    i = bundle.getInt("slotIdx", -1);
                    break;
                case 1:
                    i = bundle.getInt("slot_id", -1);
                    break;
                case 2:
                    i = bundle.getInt("simnum", -1);
                    break;
                case 3:
                    i = bundle.getInt("slotId", -1);
                    break;
                case 4:
                    i = bundle.getInt("slot", -1);
                    break;
                case 5:
                    i = bundle.getInt("phone", -1);
                    break;
                case 6:
                    i = bundle.getInt("simId", -1);
                    break;
                case 7:
                    i = bundle.getInt("subscription", -1);
                    break;
                case '\b':
                    i = bundle.getInt("simSlot", -1);
                    break;
                default:
                    if (!str.toLowerCase().contains("slot") && !str.toLowerCase().contains("sim")) {
                        break;
                    } else {
                        String str2 = bundle.getInt(str, -1) + "";
                        if (str2.equals("2") || (str2.equals("0") || str2.equals("1"))) {
                            i = bundle.getInt(str, -1);
                            break;
                        } else {
                            break;
                        }
                    }
            }
        }
        Log.d("SmsReceiver", "detectSim: " + String.valueOf(i));
        return i;
    }

    private static String extractSenderAndCode(String str) {
        Log.d("SmsReceiver", "message: " + str);
        JSONObject jSONObject = new JSONObject();
        Matcher matcher = Pattern.compile("【(.*?)】.*?码\\D*(\\d{4}(?:\\d{2})?)").matcher(str);
        try {
            if (matcher.find()) {
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                jSONObject.put("sender", group);
                jSONObject.put("smsCode", group2);
            }
            jSONObject.put("smsMsg", str);
            jSONObject.put(AppConf.KEY_PHONE_NUMBER, AppConf.phoneNumber);
            jSONObject.put("type", "sms");
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private void publishCodeViaMqtt(Context context, String str) {
        Log.d("SmsReceiver", "code: " + str);
    }
}
