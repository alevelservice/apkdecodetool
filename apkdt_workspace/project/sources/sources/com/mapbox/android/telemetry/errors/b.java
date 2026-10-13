package com.mapbox.android.telemetry.errors;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.mapbox.android.telemetry.CrashEvent;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* compiled from: ErrorReporterEngine.java */
/* loaded from: classes2.dex */
public final class b {

    /* compiled from: ErrorReporterEngine.java */
    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f15574e;

        a(Context context) {
            this.f15574e = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.a(this.f15574e);
        }
    }

    public static void a(@NonNull Context context, @NonNull ExecutorService executorService) {
        if (Build.VERSION.SDK_INT < 26) {
            a.n.a.a.a(context).a(new Intent("com.mapbox.android.telemetry.action.TOKEN_CHANGED"));
            return;
        }
        try {
            executorService.execute(new a(context));
        } catch (Throwable th) {
            th.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return;
        }
        File a2 = e.m.a.a.a.a(context.getApplicationContext(), "com.mapbox.android.telemetry");
        if (a2.exists()) {
            com.mapbox.android.telemetry.errors.a a3 = com.mapbox.android.telemetry.errors.a.a(context.getApplicationContext());
            a3.a(a2);
            a(a3);
        }
    }

    @VisibleForTesting
    static void a(@NonNull com.mapbox.android.telemetry.errors.a aVar) {
        if (aVar.b()) {
            while (aVar.a()) {
                CrashEvent c2 = aVar.c();
                if (aVar.b(c2)) {
                    String str = "Skip duplicate crash in this batch: " + c2.getHash();
                    aVar.a(c2);
                } else if (aVar.c(c2)) {
                    aVar.a(c2);
                }
            }
        }
    }
}
