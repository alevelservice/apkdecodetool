package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mf0 implements oe1<jf0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8100a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<f00> f8101b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f8102c;

    public mf0(af1<Context> af1Var, af1<f00> af1Var2, af1<Executor> af1Var3) {
        this.f8100a = af1Var;
        this.f8101b = af1Var2;
        this.f8102c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new jf0(this.f8100a.get(), this.f8101b.get(), this.f8102c.get());
    }
}
