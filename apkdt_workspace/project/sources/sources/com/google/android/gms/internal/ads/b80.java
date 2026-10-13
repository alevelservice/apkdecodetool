package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b80 implements oe1<ox<ot>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<a80> f5727a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5728b;

    private b80(af1<a80> af1Var, af1<Executor> af1Var2) {
        this.f5727a = af1Var;
        this.f5728b = af1Var2;
    }

    public static b80 a(af1<a80> af1Var, af1<Executor> af1Var2) {
        return new b80(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5727a.get(), this.f5728b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
