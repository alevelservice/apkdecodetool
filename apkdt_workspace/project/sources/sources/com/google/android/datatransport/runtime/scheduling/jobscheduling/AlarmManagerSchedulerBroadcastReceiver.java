package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import e.i.b.a.i.m;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onReceive$0() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i2 = intent.getExtras().getInt("attemptNumber");
        e.i.b.a.i.r.a(context);
        m.a d2 = e.i.b.a.i.m.d();
        d2.a(queryParameter);
        d2.a(e.i.b.a.i.y.a.a(intValue));
        if (queryParameter2 != null) {
            d2.a(Base64.decode(queryParameter2, 0));
        }
        e.i.b.a.i.r.b().a().a(d2.a(), i2, b.a());
    }
}
