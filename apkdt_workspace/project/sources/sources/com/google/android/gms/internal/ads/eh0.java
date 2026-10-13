package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eh0 implements oe1<bh0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f6427a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6428b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<y50> f6429c;

    public eh0(af1<Context> af1Var, af1<Executor> af1Var2, af1<y50> af1Var3) {
        this.f6427a = af1Var;
        this.f6428b = af1Var2;
        this.f6429c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new bh0(this.f6427a.get(), this.f6428b.get(), this.f6429c.get());
    }
}
