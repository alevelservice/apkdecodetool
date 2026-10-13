package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class de0 implements ad0<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final qp f6203a;

    /* renamed from: b, reason: collision with root package name */
    private final jd0 f6204b;

    /* renamed from: c, reason: collision with root package name */
    private final tz0 f6205c;

    /* renamed from: d, reason: collision with root package name */
    private final mt f6206d;

    /* renamed from: e, reason: collision with root package name */
    private final ScheduledExecutorService f6207e;

    public de0(qp qpVar, jd0 jd0Var, mt mtVar, ScheduledExecutorService scheduledExecutorService, tz0 tz0Var) {
        this.f6203a = qpVar;
        this.f6204b = jd0Var;
        this.f6206d = mtVar;
        this.f6207e = scheduledExecutorService;
        this.f6205c = tz0Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<uo> a(final vs0 vs0Var, final ns0 ns0Var) {
        return this.f6205c.submit(new Callable(this, vs0Var, ns0Var) { // from class: com.google.android.gms.internal.ads.ge0

            /* renamed from: e, reason: collision with root package name */
            private final de0 f6857e;

            /* renamed from: f, reason: collision with root package name */
            private final vs0 f6858f;

            /* renamed from: g, reason: collision with root package name */
            private final ns0 f6859g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6857e = this;
                this.f6858f = vs0Var;
                this.f6859g = ns0Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f6857e.c(this.f6858f, this.f6859g);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        return vs0Var.f9985a.f9004a.a() != null && this.f6204b.b(vs0Var, ns0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ uo c(final vs0 vs0Var, final ns0 ns0Var) {
        return this.f6203a.a(new lr(vs0Var, ns0Var, null), new dq(vs0Var.f9985a.f9004a.a(), new Runnable(this, vs0Var, ns0Var) { // from class: com.google.android.gms.internal.ads.fe0

            /* renamed from: e, reason: collision with root package name */
            private final de0 f6630e;

            /* renamed from: f, reason: collision with root package name */
            private final vs0 f6631f;

            /* renamed from: g, reason: collision with root package name */
            private final ns0 f6632g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6630e = this;
                this.f6631f = vs0Var;
                this.f6632g = ns0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6630e.d(this.f6631f, this.f6632g);
            }
        })).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d(vs0 vs0Var, ns0 ns0Var) {
        gz0.a(gz0.a(this.f6204b.a(vs0Var, ns0Var), ns0Var.I, TimeUnit.SECONDS, this.f6207e), new ie0(this), this.f6205c);
    }
}
