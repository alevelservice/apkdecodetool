package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;

/* loaded from: classes.dex */
public final class c8 extends h8 {

    /* renamed from: d, reason: collision with root package name */
    private final AlarmManager f12810d;

    /* renamed from: e, reason: collision with root package name */
    private final b f12811e;

    /* renamed from: f, reason: collision with root package name */
    private Integer f12812f;

    /* JADX INFO: Access modifiers changed from: protected */
    public c8(g8 g8Var) {
        super(g8Var);
        this.f12810d = (AlarmManager) getContext().getSystemService("alarm");
        this.f12811e = new f8(this, g8Var.o(), g8Var);
    }

    private final int t() {
        if (this.f12812f == null) {
            String valueOf = String.valueOf(getContext().getPackageName());
            this.f12812f = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f12812f.intValue();
    }

    @TargetApi(24)
    private final void u() {
        JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
        int t = t();
        zzab().y().a("Cancelling job. JobID", Integer.valueOf(t));
        jobScheduler.cancel(t);
    }

    private final PendingIntent v() {
        Context context = getContext();
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    public final void a(long j2) {
        q();
        zzae();
        Context context = getContext();
        if (!z3.a(context)) {
            zzab().x().a("Receiver not registered/enabled");
        }
        if (!r8.a(context, false)) {
            zzab().x().a("Service not registered/enabled");
        }
        s();
        long c2 = a().c() + j2;
        if (j2 < Math.max(0L, j.C.a(null).longValue()) && !this.f12811e.c()) {
            zzab().y().a("Scheduling upload with DelayedRunnable");
            this.f12811e.a(j2);
        }
        zzae();
        if (Build.VERSION.SDK_INT >= 24) {
            zzab().y().a("Scheduling upload with JobScheduler");
            Context context2 = getContext();
            ComponentName componentName = new ComponentName(context2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int t = t();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            JobInfo build = new JobInfo.Builder(t, componentName).setMinimumLatency(j2).setOverrideDeadline(j2 << 1).setExtras(persistableBundle).build();
            zzab().y().a("Scheduling job. JobID", Integer.valueOf(t));
            com.google.android.gms.internal.measurement.c7.a(context2, build, "com.google.android.gms", "UploadAlarm");
            return;
        }
        zzab().y().a("Scheduling upload with AlarmManager");
        this.f12810d.setInexactRepeating(2, c2, Math.max(j.x.a(null).longValue(), j2), v());
    }

    @Override // com.google.android.gms.measurement.internal.h8
    protected final boolean r() {
        this.f12810d.cancel(v());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        u();
        return false;
    }

    public final void s() {
        q();
        this.f12810d.cancel(v());
        this.f12811e.a();
        if (Build.VERSION.SDK_INT >= 24) {
            u();
        }
    }
}
