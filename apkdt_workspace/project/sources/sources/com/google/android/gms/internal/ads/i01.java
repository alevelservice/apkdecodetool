package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i01<V> extends pz0<V> {
    private final Callable<V> zzgqt;
    private final /* synthetic */ f01 zzgrs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i01(f01 f01Var, Callable<V> callable) {
        this.zzgrs = f01Var;
        uw0.a(callable);
        this.zzgqt = callable;
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final boolean isDone() {
        return this.zzgrs.isDone();
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final V zzapb() {
        return this.zzgqt.call();
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final String zzapc() {
        return this.zzgqt.toString();
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final void zzb(V v, Throwable th) {
        if (th == null) {
            this.zzgrs.a((f01) v);
        } else {
            this.zzgrs.a(th);
        }
    }
}
