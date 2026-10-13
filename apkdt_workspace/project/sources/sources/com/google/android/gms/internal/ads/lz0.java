package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lz0<V> {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f7994a;

    /* renamed from: b, reason: collision with root package name */
    private final jx0<qz0<? extends V>> f7995b;

    private lz0(boolean z, jx0<qz0<? extends V>> jx0Var) {
        this.f7994a = false;
        this.f7995b = jx0Var;
    }

    public final <C> qz0<C> a(Callable<C> callable, Executor executor) {
        return new ty0(this.f7995b, this.f7994a, executor, callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ lz0(boolean z, jx0 jx0Var, jz0 jz0Var) {
        this(false, jx0Var);
    }
}
