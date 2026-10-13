package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p80 implements oe1<m80> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f8660a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ud> f8661b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Context> f8662c;

    public p80(af1<Executor> af1Var, af1<ud> af1Var2, af1<Context> af1Var3) {
        this.f8660a = af1Var;
        this.f8661b = af1Var2;
        this.f8662c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new m80(this.f8660a.get(), this.f8661b.get(), this.f8662c.get());
    }
}
