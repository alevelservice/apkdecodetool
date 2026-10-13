package top.xy12.codetransporter.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.util.Log;
import top.xy12.codetransporter.conf.AppConf;

/* loaded from: classes.dex */
public class CallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        if (!TelephonyManager.EXTRA_STATE_RINGING.equals(intent.getStringExtra("state")) || (stringExtra = intent.getStringExtra("incoming_number")) == null) {
            return;
        }
        stringExtra.isEmpty();
    }

    private void publishCallViaMqtt(Context context, String str) {
        Log.d("CallReceiver", "mqttTopicCall: " + AppConf.mqttTopicCall);
        Log.d("CallReceiver", "call: " + str);
    }
}
