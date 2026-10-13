package io.flutter.plugins.firebase.crashlytics;

import java.util.HashMap;

/* compiled from: FlutterFirebaseCrashlyticsPlugin.java */
/* loaded from: classes2.dex */
class n extends HashMap<String, Object> {
    final /* synthetic */ r this$0;
    final /* synthetic */ boolean val$unsentReports;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(r rVar, boolean z) {
        this.this$0 = rVar;
        this.val$unsentReports = z;
        put("unsentReports", Boolean.valueOf(this.val$unsentReports));
    }
}
