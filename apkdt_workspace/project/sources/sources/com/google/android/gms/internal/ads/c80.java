package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c80 implements oe1<ox<sv>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<a80> f5934a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5935b;

    private c80(af1<a80> af1Var, af1<Executor> af1Var2) {
        this.f5934a = af1Var;
        this.f5935b = af1Var2;
    }

    public static c80 a(af1<a80> af1Var, af1<Executor> af1Var2) {
        return new c80(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5934a.get(), this.f5935b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
