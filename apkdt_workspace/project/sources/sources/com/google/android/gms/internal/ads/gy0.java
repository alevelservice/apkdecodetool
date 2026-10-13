package com.google.android.gms.internal.ads;

import java.lang.Throwable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gy0<V, X extends Throwable> extends dy0<V, X, qy0<? super X, ? extends V>, qz0<? extends V>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public gy0(qz0<? extends V> qz0Var, Class<X> cls, qy0<? super X, ? extends V> qy0Var) {
        super(qz0Var, cls, qy0Var);
    }

    @Override // com.google.android.gms.internal.ads.dy0
    final /* synthetic */ Object a(Object obj, Throwable th) {
        qy0 qy0Var = (qy0) obj;
        qz0 b2 = qy0Var.b(th);
        uw0.a(b2, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", qy0Var);
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.dy0
    final /* synthetic */ void b(Object obj) {
        a((qz0) obj);
    }
}
