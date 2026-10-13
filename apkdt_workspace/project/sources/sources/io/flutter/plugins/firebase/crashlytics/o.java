package io.flutter.plugins.firebase.crashlytics;

import java.util.HashMap;

/* compiled from: FlutterFirebaseCrashlyticsPlugin.java */
/* loaded from: classes2.dex */
class o extends HashMap<String, Object> {
    final /* synthetic */ r this$0;
    final /* synthetic */ boolean val$didCrashOnPreviousExecution;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(r rVar, boolean z) {
        this.this$0 = rVar;
        this.val$didCrashOnPreviousExecution = z;
        put("didCrashOnPreviousExecution", Boolean.valueOf(this.val$didCrashOnPreviousExecution));
    }
}
