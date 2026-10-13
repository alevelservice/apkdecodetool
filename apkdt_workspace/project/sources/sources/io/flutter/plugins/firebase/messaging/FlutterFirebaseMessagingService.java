package io.flutter.plugins.firebase.messaging;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;

/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(@NonNull RemoteMessage remoteMessage) {
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(@NonNull String str) {
        Intent intent = new Intent("io.flutter.plugins.firebase.messaging.TOKEN");
        intent.putExtra("token", str);
        a.n.a.a.a(getApplicationContext()).a(intent);
    }
}
