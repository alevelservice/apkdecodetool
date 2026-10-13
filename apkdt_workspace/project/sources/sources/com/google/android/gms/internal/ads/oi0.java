package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oi0 implements oe1<ji0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f8530a;

    public oi0(af1<Executor> af1Var) {
        this.f8530a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ji0(this.f8530a.get());
    }
}
