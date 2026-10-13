package com.alipay.iap.android.aplog.d;

import android.content.Context;
import android.content.Intent;
import androidx.core.app.JobIntentService;

/* compiled from: LogServiceInToolsProcess.java */
/* loaded from: classes.dex */
public class a extends JobIntentService {
    public static void a(Context context, Intent intent) {
        JobIntentService.enqueueWork(context, (Class<?>) a.class, 1943, intent);
    }
}
