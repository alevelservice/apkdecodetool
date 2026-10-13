package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gp implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final yo f6953a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f6954b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<zzawv> f6955c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ns0> f6956d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<ws0> f6957e;

    public gp(yo yoVar, af1<Context> af1Var, af1<zzawv> af1Var2, af1<ns0> af1Var3, af1<ws0> af1Var4) {
        this.f6953a = yoVar;
        this.f6954b = af1Var;
        this.f6955c = af1Var2;
        this.f6956d = af1Var3;
        this.f6957e = af1Var4;
    }

    public static ox<qu> a(yo yoVar, final Context context, final zzawv zzawvVar, final ns0 ns0Var, final ws0 ws0Var) {
        ox<qu> oxVar = new ox<>(new qu(context, zzawvVar, ns0Var, ws0Var) { // from class: com.google.android.gms.internal.ads.bp

            /* renamed from: e, reason: collision with root package name */
            private final Context f5828e;

            /* renamed from: f, reason: collision with root package name */
            private final zzawv f5829f;

            /* renamed from: g, reason: collision with root package name */
            private final ns0 f5830g;

            /* renamed from: h, reason: collision with root package name */
            private final ws0 f5831h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5828e = context;
                this.f5829f = zzawvVar;
                this.f5830g = ns0Var;
                this.f5831h = ws0Var;
            }

            @Override // com.google.android.gms.internal.ads.qu
            public final void onAdLoaded() {
                com.google.android.gms.ads.internal.n.m().b(this.f5828e, this.f5829f.f11000e, this.f5830g.z.toString(), this.f5831h.f10197f);
            }
        }, yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f6953a, this.f6954b.get(), this.f6955c.get(), this.f6956d.get(), this.f6957e.get());
    }
}
