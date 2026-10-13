package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ga0 implements oe1<ox<sv>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<eb0> f6835a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6836b;

    private ga0(af1<eb0> af1Var, af1<Executor> af1Var2) {
        this.f6835a = af1Var;
        this.f6836b = af1Var2;
    }

    public static ga0 a(af1<eb0> af1Var, af1<Executor> af1Var2) {
        return new ga0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6835a.get(), this.f6836b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
