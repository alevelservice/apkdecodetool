package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class vy0<T> extends pz0<T> {
    private final Executor zzgqq;
    boolean zzgqr = true;
    private final /* synthetic */ ty0 zzgqs;

    public vy0(ty0 ty0Var, Executor executor) {
        this.zzgqs = ty0Var;
        uw0.a(executor);
        this.zzgqq = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void execute() {
        try {
            this.zzgqq.execute(this);
        } catch (RejectedExecutionException e2) {
            if (this.zzgqr) {
                this.zzgqs.a((Throwable) e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pz0
    final boolean isDone() {
        return this.zzgqs.isDone();
    }

    abstract void setValue(T t);

    @Override // com.google.android.gms.internal.ads.pz0
    final void zzb(T t, Throwable th) {
        if (th != null) {
            if (th instanceof ExecutionException) {
                this.zzgqs.a(th.getCause());
                return;
            } else if (th instanceof CancellationException) {
                this.zzgqs.cancel(false);
                return;
            } else {
                this.zzgqs.a(th);
                return;
            }
        }
        setValue(t);
    }
}
