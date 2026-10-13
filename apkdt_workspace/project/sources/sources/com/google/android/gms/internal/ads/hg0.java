package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hg0 implements oe1<fg0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7063a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f7064b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<y50> f7065c;

    public hg0(af1<Context> af1Var, af1<Executor> af1Var2, af1<y50> af1Var3) {
        this.f7063a = af1Var;
        this.f7064b = af1Var2;
        this.f7065c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new fg0(this.f7063a.get(), this.f7064b.get(), this.f7065c.get());
    }
}
