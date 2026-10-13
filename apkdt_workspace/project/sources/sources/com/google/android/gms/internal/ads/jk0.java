package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jk0 implements ko0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final qz0<String> f7512a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f7513b;

    public jk0(qz0<String> qz0Var, Executor executor) {
        this.f7512a = qz0Var;
        this.f7513b = executor;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<Object> a() {
        return gz0.a(this.f7512a, ik0.f7319a, this.f7513b);
    }
}
