package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g70 implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<o70> f6820a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6821b;

    private g70(af1<o70> af1Var, af1<Executor> af1Var2) {
        this.f6820a = af1Var;
        this.f6821b = af1Var2;
    }

    public static g70 a(af1<o70> af1Var, af1<Executor> af1Var2) {
        return new g70(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6820a.get(), this.f6821b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
