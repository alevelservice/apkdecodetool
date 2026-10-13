package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.w7;

/* loaded from: classes.dex */
public final class s7<T extends Context & w7> {

    /* renamed from: a, reason: collision with root package name */
    private final T f13224a;

    public s7(T t) {
        com.google.android.gms.common.internal.m.a(t);
        this.f13224a = t;
    }

    @MainThread
    public final void a() {
        j4 a2 = j4.a(this.f13224a, (zzx) null);
        f3 zzab = a2.zzab();
        a2.zzae();
        zzab.y().a("Local AppMeasurementService is starting up");
    }

    @MainThread
    public final void b() {
        j4 a2 = j4.a(this.f13224a, (zzx) null);
        f3 zzab = a2.zzab();
        a2.zzae();
        zzab.y().a("Local AppMeasurementService is shutting down");
    }

    @MainThread
    public final boolean c(Intent intent) {
        if (intent == null) {
            c().q().a("onUnbind called with null intent");
            return true;
        }
        c().y().a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    private final f3 c() {
        return j4.a(this.f13224a, (zzx) null).zzab();
    }

    @MainThread
    public final int a(final Intent intent, int i2, final int i3) {
        j4 a2 = j4.a(this.f13224a, (zzx) null);
        final f3 zzab = a2.zzab();
        if (intent == null) {
            zzab.t().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        a2.zzae();
        zzab.y().a("Local AppMeasurementService called. startId, action", Integer.valueOf(i3), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            a(new Runnable(this, i3, zzab, intent) { // from class: com.google.android.gms.measurement.internal.r7

                /* renamed from: e, reason: collision with root package name */
                private final s7 f13196e;

                /* renamed from: f, reason: collision with root package name */
                private final int f13197f;

                /* renamed from: g, reason: collision with root package name */
                private final f3 f13198g;

                /* renamed from: h, reason: collision with root package name */
                private final Intent f13199h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f13196e = this;
                    this.f13197f = i3;
                    this.f13198g = zzab;
                    this.f13199h = intent;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f13196e.a(this.f13197f, this.f13198g, this.f13199h);
                }
            });
        }
        return 2;
    }

    @MainThread
    public final void b(Intent intent) {
        if (intent == null) {
            c().q().a("onRebind called with null intent");
        } else {
            c().y().a("onRebind called. action", intent.getAction());
        }
    }

    private final void a(Runnable runnable) {
        g8 a2 = g8.a(this.f13224a);
        a2.b().a(new t7(this, a2, runnable));
    }

    @MainThread
    public final IBinder a(Intent intent) {
        if (intent == null) {
            c().q().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzfk(g8.a(this.f13224a));
        }
        c().t().a("onBind received unknown action", action);
        return null;
    }

    @TargetApi(24)
    @MainThread
    public final boolean a(final JobParameters jobParameters) {
        j4 a2 = j4.a(this.f13224a, (zzx) null);
        final f3 zzab = a2.zzab();
        String string = jobParameters.getExtras().getString("action");
        a2.zzae();
        zzab.y().a("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        a(new Runnable(this, zzab, jobParameters) { // from class: com.google.android.gms.measurement.internal.u7

            /* renamed from: e, reason: collision with root package name */
            private final s7 f13261e;

            /* renamed from: f, reason: collision with root package name */
            private final f3 f13262f;

            /* renamed from: g, reason: collision with root package name */
            private final JobParameters f13263g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f13261e = this;
                this.f13262f = zzab;
                this.f13263g = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f13261e.a(this.f13262f, this.f13263g);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(f3 f3Var, JobParameters jobParameters) {
        f3Var.y().a("AppMeasurementJobService processed last upload request.");
        this.f13224a.zza(jobParameters, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i2, f3 f3Var, Intent intent) {
        if (this.f13224a.zza(i2)) {
            f3Var.y().a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i2));
            c().y().a("Completed wakeful intent.");
            this.f13224a.zza(intent);
        }
    }
}
