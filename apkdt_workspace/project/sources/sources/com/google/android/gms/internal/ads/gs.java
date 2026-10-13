package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gs implements oe1<ox<wt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<fn> f6966a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6967b;

    private gs(af1<fn> af1Var, af1<Executor> af1Var2) {
        this.f6966a = af1Var;
        this.f6967b = af1Var2;
    }

    public static gs a(af1<fn> af1Var, af1<Executor> af1Var2) {
        return new gs(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6966a.get(), this.f6967b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
