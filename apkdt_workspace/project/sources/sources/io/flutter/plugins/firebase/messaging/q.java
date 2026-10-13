package io.flutter.plugins.firebase.messaging;

import com.google.firebase.messaging.FirebaseMessaging;
import java.util.HashMap;

/* compiled from: FlutterFirebaseMessagingPlugin.java */
/* loaded from: classes2.dex */
class q extends HashMap<String, Object> {
    final /* synthetic */ FlutterFirebaseMessagingPlugin this$0;
    final /* synthetic */ FirebaseMessaging val$firebaseMessaging;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(FlutterFirebaseMessagingPlugin flutterFirebaseMessagingPlugin, FirebaseMessaging firebaseMessaging) {
        this.this$0 = flutterFirebaseMessagingPlugin;
        this.val$firebaseMessaging = firebaseMessaging;
        put("isAutoInitEnabled", Boolean.valueOf(this.val$firebaseMessaging.a()));
    }
}
