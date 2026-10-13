package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ez implements oe1<ox<wv>> {

    /* renamed from: a, reason: collision with root package name */
    private final qy f6545a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6546b;

    private ez(qy qyVar, af1<Executor> af1Var) {
        this.f6545a = qyVar;
        this.f6546b = af1Var;
    }

    public static ez a(qy qyVar, af1<Executor> af1Var) {
        return new ez(qyVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox<wv> a2 = this.f6545a.a(this.f6546b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
