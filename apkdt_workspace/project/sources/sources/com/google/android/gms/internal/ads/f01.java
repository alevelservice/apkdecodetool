package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class f01<V> extends dz0<V> implements RunnableFuture<V> {

    /* renamed from: l, reason: collision with root package name */
    private volatile pz0<?> f6549l;

    private f01(Callable<V> callable) {
        this.f6549l = new i01(this, callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> f01<V> a(Callable<V> callable) {
        return new f01<>(callable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final void b() {
        pz0<?> pz0Var;
        super.b();
        if (d() && (pz0Var = this.f6549l) != null) {
            pz0Var.interruptTask();
        }
        this.f6549l = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final String c() {
        pz0<?> pz0Var = this.f6549l;
        if (pz0Var != null) {
            String valueOf = String.valueOf(pz0Var);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
            sb.append("task=[");
            sb.append(valueOf);
            sb.append("]");
            return sb.toString();
        }
        return super.c();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        pz0<?> pz0Var = this.f6549l;
        if (pz0Var != null) {
            pz0Var.run();
        }
        this.f6549l = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> f01<V> a(Runnable runnable, @NullableDecl V v) {
        return new f01<>(Executors.callable(runnable, v));
    }
}
