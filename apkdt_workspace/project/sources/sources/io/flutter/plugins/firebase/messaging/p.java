package io.flutter.plugins.firebase.messaging;

import java.util.HashMap;

/* compiled from: FlutterFirebaseMessagingPlugin.java */
/* loaded from: classes2.dex */
class p extends HashMap<String, Object> {
    final /* synthetic */ FlutterFirebaseMessagingPlugin this$0;
    final /* synthetic */ String val$token;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(FlutterFirebaseMessagingPlugin flutterFirebaseMessagingPlugin, String str) {
        this.this$0 = flutterFirebaseMessagingPlugin;
        this.val$token = str;
        put("token", this.val$token);
    }
}
