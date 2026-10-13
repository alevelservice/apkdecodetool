package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzcdt extends zzaoa {

    /* renamed from: e, reason: collision with root package name */
    private final Context f11094e;

    /* renamed from: f, reason: collision with root package name */
    private final Executor f11095f;

    /* renamed from: g, reason: collision with root package name */
    private final x7 f11096g;

    /* renamed from: h, reason: collision with root package name */
    private final t7 f11097h;

    /* renamed from: i, reason: collision with root package name */
    private final wm f11098i;

    public zzcdt(Context context, Executor executor, x7 x7Var, wm wmVar, t7 t7Var) {
        aw1.a(context);
        this.f11094e = context;
        this.f11095f = executor;
        this.f11096g = x7Var;
        this.f11097h = t7Var;
        this.f11098i = wmVar;
    }

    private final void a(qz0<InputStream> qz0Var, zzaoe zzaoeVar) {
        gz0.a(gz0.a(qz0Var, new qy0(this) { // from class: com.google.android.gms.internal.ads.tb0
            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return gz0.a(et0.a((InputStream) obj));
            }
        }, yd.f10540a), new sb0(this, zzaoeVar), yd.f10544e);
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final zzanx zza(zzanv zzanvVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zza(zzanv zzanvVar, zzaoc zzaocVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zza(zzaok zzaokVar, zzaoe zzaoeVar) {
        qz0<InputStream> zzh = zzh(zzaokVar);
        a(zzh, zzaoeVar);
        zzh.a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.rb0

            /* renamed from: e, reason: collision with root package name */
            private final zzcdt f9084e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9084e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9084e.zzakg();
            }
        }, this.f11095f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzakg() {
        de.a(this.f11097h.a(), "persistFlags");
    }

    @Override // com.google.android.gms.internal.ads.zzaob
    public final void zzb(zzaok zzaokVar, zzaoe zzaoeVar) {
        qz0<InputStream> a2;
        c4 a3 = com.google.android.gms.ads.internal.n.p().a(this.f11094e, zzawv.j());
        if (!((Boolean) mu1.e().a(aw1.o3)).booleanValue()) {
            a2 = gz0.a((Throwable) new Exception("Signal collection disabled."));
        } else {
            cp0 a4 = this.f11098i.a(zzaokVar);
            final no0<JSONObject> b2 = this.f11098i.a(zzaokVar).b();
            a2 = a4.c().a((zu0) wu0.GET_SIGNALS, gz0.a(zzaokVar.f10965e)).a((qy0<I, O2>) new qy0(b2) { // from class: com.google.android.gms.internal.ads.qb0

                /* renamed from: a, reason: collision with root package name */
                private final no0 f8872a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8872a = b2;
                }

                @Override // com.google.android.gms.internal.ads.qy0
                public final qz0 b(Object obj) {
                    return this.f8872a.a(com.google.android.gms.ads.internal.n.c().a((Bundle) obj));
                }
            }).a((ru0) wu0.JS_SIGNALS).a((qy0) a3.a("google.afma.request.getSignals", b4.f5712b, b4.f5713c)).a();
        }
        a(a2, zzaoeVar);
    }

    public final qz0<InputStream> zzh(zzaok zzaokVar) {
        c4 a2 = com.google.android.gms.ads.internal.n.p().a(this.f11094e, zzawv.j());
        final cp0 a3 = this.f11098i.a(zzaokVar);
        qy0 qy0Var = new qy0(a3) { // from class: com.google.android.gms.internal.ads.kb0

            /* renamed from: a, reason: collision with root package name */
            private final cp0 f7649a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7649a = a3;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f7649a.a().a(com.google.android.gms.ads.internal.n.c().a((Bundle) obj));
            }
        };
        fu0 fu0Var = jb0.f7450a;
        t3 a4 = a2.a("AFMA_getAdDictionary", b4.f5712b, mb0.f8073a);
        t3 a5 = a2.a("google.afma.response.normalize", vb0.f9888d, b4.f5713c);
        wb0 wb0Var = new wb0(this.f11094e, zzaokVar.f10966f.f11000e, this.f11096g, zzaokVar.f10971k);
        zu0 c2 = a3.c();
        final hu0 a6 = c2.a((zu0) wu0.GMS_SIGNALS, gz0.a(zzaokVar.f10965e)).a((qy0<I, O2>) qy0Var).a(fu0Var).a();
        if (((Boolean) mu1.e().a(aw1.a3)).booleanValue()) {
            x3<JSONObject> x3Var = b4.f5712b;
            return c2.a((zu0) wu0.AD_REQUEST, (qz0) a6).a((qy0<I, O2>) a2.a("google.afma.request.getAdResponse", x3Var, x3Var)).a(lb0.f7856a).a();
        }
        final hu0 a7 = c2.a((zu0) wu0.BUILD_URL, (qz0) a6).a((qy0<I, O2>) a4).a();
        final hu0 a8 = c2.a((zu0) wu0.HTTP, a7, a6).a(new Callable(a6, a7) { // from class: com.google.android.gms.internal.ads.pb0

            /* renamed from: e, reason: collision with root package name */
            private final qz0 f8677e;

            /* renamed from: f, reason: collision with root package name */
            private final qz0 f8678f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8677e = a6;
                this.f8678f = a7;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zb0((JSONObject) this.f8677e.get(), (l7) this.f8678f.get());
            }
        }).a((fu0) wb0Var).a();
        return c2.a((zu0) wu0.PRE_PROCESS, a6, a7, a8).a(new Callable(a8, a6, a7) { // from class: com.google.android.gms.internal.ads.nb0

            /* renamed from: e, reason: collision with root package name */
            private final qz0 f8310e;

            /* renamed from: f, reason: collision with root package name */
            private final qz0 f8311f;

            /* renamed from: g, reason: collision with root package name */
            private final qz0 f8312g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8310e = a8;
                this.f8311f = a6;
                this.f8312g = a7;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new vb0((yb0) this.f8310e.get(), (JSONObject) this.f8311f.get(), (l7) this.f8312g.get());
            }
        }).a((qy0) a5).a();
    }
}
