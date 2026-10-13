package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b70 implements oe1<ox<ot>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<o70> f5723a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5724b;

    private b70(af1<o70> af1Var, af1<Executor> af1Var2) {
        this.f5723a = af1Var;
        this.f5724b = af1Var2;
    }

    public static b70 a(af1<o70> af1Var, af1<Executor> af1Var2) {
        return new b70(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5723a.get(), this.f5724b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
