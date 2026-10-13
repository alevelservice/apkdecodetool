package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.measurement.internal.s7;
import com.google.android.gms.measurement.internal.w7;

@TargetApi(24)
/* loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements w7 {

    /* renamed from: e, reason: collision with root package name */
    private s7<AppMeasurementJobService> f12730e;

    private final s7<AppMeasurementJobService> a() {
        if (this.f12730e == null) {
            this.f12730e = new s7<>(this);
        }
        return this.f12730e;
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return a().a(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return a().c(intent);
    }

    @Override // com.google.android.gms.measurement.internal.w7
    public final void zza(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.w7
    public final boolean zza(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.w7
    @TargetApi(24)
    public final void zza(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }
}
