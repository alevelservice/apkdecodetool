package com.mapbox.android.telemetry.errors;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.core.app.JobIntentService;

/* loaded from: classes2.dex */
public final class ErrorReporterJobIntentService extends JobIntentService {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void enqueueWork(@NonNull Context context) {
        JobIntentService.enqueueWork(context, (Class<?>) ErrorReporterJobIntentService.class, 666, new Intent(context, (Class<?>) ErrorReporterJobIntentService.class));
    }

    @Override // androidx.core.app.JobIntentService
    protected void onHandleWork(@NonNull Intent intent) {
        try {
            b.a(getApplicationContext());
        } catch (Throwable th) {
            th.toString();
        }
    }
}
