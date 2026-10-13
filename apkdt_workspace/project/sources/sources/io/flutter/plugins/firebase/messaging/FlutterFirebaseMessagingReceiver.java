package io.flutter.plugins.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.firebase.messaging.RemoteMessage;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingReceiver extends BroadcastReceiver {
    static HashMap<String, RemoteMessage> notifications = new HashMap<>();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (n.a() == null) {
            n.a(context.getApplicationContext());
        }
        RemoteMessage remoteMessage = new RemoteMessage(intent.getExtras());
        if (remoteMessage.p() != null) {
            notifications.put(remoteMessage.m(), remoteMessage);
            r.a().a(remoteMessage);
        }
        if (s.a(context)) {
            Intent intent2 = new Intent("io.flutter.plugins.firebase.messaging.NOTIFICATION");
            intent2.putExtra("notification", remoteMessage);
            a.n.a.a.a(context).a(intent2);
        } else {
            Intent intent3 = new Intent(context, (Class<?>) FlutterFirebaseMessagingBackgroundService.class);
            intent3.putExtra("notification", remoteMessage);
            FlutterFirebaseMessagingBackgroundService.enqueueMessageProcessing(context, intent3);
        }
    }
}
