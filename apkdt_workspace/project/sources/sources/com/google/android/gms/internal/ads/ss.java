package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ss implements oe1<pw0<ns0, pb>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9434a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f9435b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f9436c;

    public ss(af1<Context> af1Var, af1<zzawv> af1Var2, af1<ws0> af1Var3) {
        this.f9434a = af1Var;
        this.f9435b = af1Var2;
        this.f9436c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        final Context context = this.f9434a.get();
        final zzawv zzawvVar = this.f9435b.get();
        final ws0 ws0Var = this.f9436c.get();
        pw0 pw0Var = new pw0(context, zzawvVar, ws0Var) { // from class: com.google.android.gms.internal.ads.ps

            /* renamed from: a, reason: collision with root package name */
            private final Context f8765a;

            /* renamed from: b, reason: collision with root package name */
            private final zzawv f8766b;

            /* renamed from: c, reason: collision with root package name */
            private final ws0 f8767c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8765a = context;
                this.f8766b = zzawvVar;
                this.f8767c = ws0Var;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj) {
                Context context2 = this.f8765a;
                zzawv zzawvVar2 = this.f8766b;
                ws0 ws0Var2 = this.f8767c;
                ns0 ns0Var = (ns0) obj;
                pb pbVar = new pb(context2);
                pbVar.b(ns0Var.y);
                pbVar.c(ns0Var.z.toString());
                pbVar.d(zzawvVar2.f11000e);
                pbVar.a(ws0Var2.f10197f);
                return pbVar;
            }
        };
        ue1.a(pw0Var, "Cannot return null from a non-@Nullable @Provides method");
        return pw0Var;
    }
}
