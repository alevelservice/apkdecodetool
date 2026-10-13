package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s90 {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f9289a;

    /* renamed from: b, reason: collision with root package name */
    private final tz0 f9290b;

    /* renamed from: c, reason: collision with root package name */
    private final ab0 f9291c;

    /* renamed from: d, reason: collision with root package name */
    private final ie1<zzcdt> f9292d;

    public s90(tz0 tz0Var, tz0 tz0Var2, ab0 ab0Var, ie1<zzcdt> ie1Var) {
        this.f9289a = tz0Var;
        this.f9290b = tz0Var2;
        this.f9291c = ab0Var;
        this.f9292d = ie1Var;
    }

    public final qz0<InputStream> a(final zzaok zzaokVar) {
        final qz0<InputStream> a2;
        String str = zzaokVar.f10968h;
        com.google.android.gms.ads.internal.n.c();
        if (wa.e(str)) {
            a2 = gz0.a((Throwable) new gb0(0));
        } else {
            if (((Boolean) mu1.e().a(aw1.Z2)).booleanValue()) {
                a2 = gz0.a(this.f9289a.submit(new Callable(this, zzaokVar) { // from class: com.google.android.gms.internal.ads.v90

                    /* renamed from: e, reason: collision with root package name */
                    private final s90 f9884e;

                    /* renamed from: f, reason: collision with root package name */
                    private final zzaok f9885f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f9884e = this;
                        this.f9885f = zzaokVar;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f9884e.b(this.f9885f);
                    }
                }), ExecutionException.class, u90.f9695a, this.f9290b);
            } else {
                a2 = this.f9291c.a(zzaokVar);
            }
        }
        qz0<InputStream> a3 = gz0.a(a2, gb0.class, new qy0(this, zzaokVar) { // from class: com.google.android.gms.internal.ads.x90

            /* renamed from: a, reason: collision with root package name */
            private final s90 f10295a;

            /* renamed from: b, reason: collision with root package name */
            private final zzaok f10296b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10295a = this;
                this.f10296b = zzaokVar;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f10295a.a(this.f10296b, (gb0) obj);
            }
        }, this.f9290b);
        if (!((Boolean) mu1.e().a(aw1.Z2)).booleanValue()) {
            a3.a(new Runnable(a2) { // from class: com.google.android.gms.internal.ads.w90

                /* renamed from: e, reason: collision with root package name */
                private final qz0 f10060e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10060e = a2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10060e.cancel(true);
                }
            }, yd.f10544e);
        }
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ InputStream b(zzaok zzaokVar) {
        return this.f9291c.a(zzaokVar).get(((Integer) mu1.e().a(aw1.Y2)).intValue(), TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(zzaok zzaokVar, gb0 gb0Var) {
        return this.f9292d.get().zzh(zzaokVar);
    }
}
