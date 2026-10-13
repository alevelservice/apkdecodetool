package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uy implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9832a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f9833b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ns0> f9834c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ws0> f9835d;

    private uy(qy qyVar, af1<Context> af1Var, af1<zzawv> af1Var2, af1<ns0> af1Var3, af1<ws0> af1Var4) {
        this.f9832a = af1Var;
        this.f9833b = af1Var2;
        this.f9834c = af1Var3;
        this.f9835d = af1Var4;
    }

    public static uy a(qy qyVar, af1<Context> af1Var, af1<zzawv> af1Var2, af1<ns0> af1Var3, af1<ws0> af1Var4) {
        return new uy(qyVar, af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        final Context context = this.f9832a.get();
        final zzawv zzawvVar = this.f9833b.get();
        final ns0 ns0Var = this.f9834c.get();
        final ws0 ws0Var = this.f9835d.get();
        ox oxVar = new ox(new qu(context, zzawvVar, ns0Var, ws0Var) { // from class: com.google.android.gms.internal.ads.ty

            /* renamed from: e, reason: collision with root package name */
            private final Context f9650e;

            /* renamed from: f, reason: collision with root package name */
            private final zzawv f9651f;

            /* renamed from: g, reason: collision with root package name */
            private final ns0 f9652g;

            /* renamed from: h, reason: collision with root package name */
            private final ws0 f9653h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9650e = context;
                this.f9651f = zzawvVar;
                this.f9652g = ns0Var;
                this.f9653h = ws0Var;
            }

            @Override // com.google.android.gms.internal.ads.qu
            public final void onAdLoaded() {
                com.google.android.gms.ads.internal.n.m().b(this.f9650e, this.f9651f.f11000e, this.f9652g.z.toString(), this.f9653h.f10197f);
            }
        }, yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
