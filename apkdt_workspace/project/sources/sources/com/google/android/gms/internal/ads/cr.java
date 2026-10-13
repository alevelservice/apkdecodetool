package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cr {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f6098a;

    /* renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f6099b;

    /* renamed from: c, reason: collision with root package name */
    private final qz0<br> f6100c;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f6101d = true;

    public cr(Executor executor, ScheduledExecutorService scheduledExecutorService, qz0<br> qz0Var) {
        this.f6098a = executor;
        this.f6099b = scheduledExecutorService;
        this.f6100c = qz0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        yd.f10543d.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.gr

            /* renamed from: e, reason: collision with root package name */
            private final cr f6962e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6962e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6962e.b();
            }
        });
    }

    public final void a(hz0<sq> hz0Var) {
        gz0.a(this.f6100c, new jr(this, hz0Var), this.f6098a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b() {
        this.f6101d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(List<? extends qz0<? extends sq>> list, final hz0<sq> hz0Var) {
        if (list != null && !list.isEmpty()) {
            qz0 a2 = gz0.a((Object) null);
            for (final qz0<? extends sq> qz0Var : list) {
                a2 = gz0.a(gz0.a(a2, Throwable.class, new qy0(hz0Var) { // from class: com.google.android.gms.internal.ads.er

                    /* renamed from: a, reason: collision with root package name */
                    private final hz0 f6492a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6492a = hz0Var;
                    }

                    @Override // com.google.android.gms.internal.ads.qy0
                    public final qz0 b(Object obj) {
                        this.f6492a.a((Throwable) obj);
                        return gz0.a((Object) null);
                    }
                }, this.f6098a), new qy0(this, hz0Var, qz0Var) { // from class: com.google.android.gms.internal.ads.hr

                    /* renamed from: a, reason: collision with root package name */
                    private final cr f7154a;

                    /* renamed from: b, reason: collision with root package name */
                    private final hz0 f7155b;

                    /* renamed from: c, reason: collision with root package name */
                    private final qz0 f7156c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7154a = this;
                        this.f7155b = hz0Var;
                        this.f7156c = qz0Var;
                    }

                    @Override // com.google.android.gms.internal.ads.qy0
                    public final qz0 b(Object obj) {
                        return this.f7154a.a(this.f7155b, this.f7156c, (sq) obj);
                    }
                }, this.f6098a);
            }
            gz0.a(a2, new ir(this, hz0Var), this.f6098a);
            return;
        }
        this.f6098a.execute(new Runnable(hz0Var) { // from class: com.google.android.gms.internal.ads.fr

            /* renamed from: e, reason: collision with root package name */
            private final hz0 f6710e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6710e = hz0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f6710e.a((Throwable) new t90(3));
            }
        });
    }

    public final boolean a() {
        return this.f6101d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(hz0 hz0Var, qz0 qz0Var, sq sqVar) {
        if (sqVar != null) {
            hz0Var.a((hz0) sqVar);
        }
        return gz0.a(qz0Var, ((Long) mu1.e().a(aw1.k1)).longValue(), TimeUnit.MILLISECONDS, this.f6099b);
    }
}
