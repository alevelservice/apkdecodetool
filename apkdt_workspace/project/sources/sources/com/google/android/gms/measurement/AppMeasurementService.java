package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.s7;
import com.google.android.gms.measurement.internal.w7;

/* loaded from: classes.dex */
public final class AppMeasurementService extends Service implements w7 {

    /* renamed from: e, reason: collision with root package name */
    private s7<AppMeasurementService> f12732e;

    private final s7<AppMeasurementService> a() {
        if (this.f12732e == null) {
            this.f12732e = new s7<>(this);
        }
        return this.f12732e;
    }

    @Override // android.app.Service
    @MainThread
    public final IBinder onBind(Intent intent) {
        return a().a(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        a().a();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        a().b();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        a().b(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(Intent intent, int i2, int i3) {
        return a().a(intent, i2, i3);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return a().c(intent);
    }

    @Override // com.google.android.gms.measurement.internal.w7
    public final boolean zza(int i2) {
        return stopSelfResult(i2);
    }

    @Override // com.google.android.gms.measurement.internal.w7
    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.w7
    public final void zza(Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }
}
