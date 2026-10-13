package io.flutter.plugins.firebase.crashlytics;

import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlutterFirebaseCrashlyticsPlugin.java */
/* loaded from: classes2.dex */
public class p extends HashMap<String, Object> {
    final /* synthetic */ r this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(r rVar) {
        boolean a2;
        this.this$0 = rVar;
        a2 = this.this$0.a(com.google.firebase.c.k());
        put("isCrashlyticsCollectionEnabled", Boolean.valueOf(a2));
    }
}
