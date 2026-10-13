package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rp implements oe1<ko0<zj0>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ck0> f9198a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f9199b;

    public rp(af1<ck0> af1Var, af1<ScheduledExecutorService> af1Var2) {
        this.f9198a = af1Var;
        this.f9199b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        en0 en0Var = new en0(this.f9198a.get(), 0L, this.f9199b.get());
        ue1.a(en0Var, "Cannot return null from a non-@Nullable @Provides method");
        return en0Var;
    }
}
