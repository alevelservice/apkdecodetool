package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wj0 implements oe1<qz0<ak0>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f10132a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<vj0> f10133b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<qz0<zzaok>> f10134c;

    public wj0(af1<zu0> af1Var, af1<vj0> af1Var2, af1<qz0<zzaok>> af1Var3) {
        this.f10132a = af1Var;
        this.f10133b = af1Var2;
        this.f10134c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        hu0 a2 = this.f10132a.get().a((zu0) wu0.GENERATE_SIGNALS, (qz0) this.f10134c.get()).a((qy0<I, O2>) this.f10133b.get()).a(((Integer) mu1.e().a(aw1.Y2)).intValue(), TimeUnit.SECONDS).a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
