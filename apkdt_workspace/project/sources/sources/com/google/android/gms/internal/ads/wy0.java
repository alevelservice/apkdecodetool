package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: Add missing generic type declarations: [V] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class wy0<V> extends vy0<V> {
    private final /* synthetic */ ty0 zzgqs;
    private final Callable<V> zzgqt;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wy0(ty0 ty0Var, Callable<V> callable, Executor executor) {
        super(ty0Var, executor);
        this.zzgqs = ty0Var;
        uw0.a(callable);
        this.zzgqt = callable;
    }

    @Override // com.google.android.gms.internal.ads.vy0
    final void setValue(V v) {
        this.zzgqs.a((ty0) v);
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final V zzapb() {
        this.zzgqr = false;
        return this.zzgqt.call();
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final String zzapc() {
        return this.zzgqt.toString();
    }
}
