package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ky0<I, O> extends hy0<I, O, qy0<? super I, ? extends O>, qz0<? extends O>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ky0(qz0<? extends I> qz0Var, qy0<? super I, ? extends O> qy0Var) {
        super(qz0Var, qy0Var);
    }

    @Override // com.google.android.gms.internal.ads.hy0
    final /* synthetic */ Object a(Object obj, @NullableDecl Object obj2) {
        qy0 qy0Var = (qy0) obj;
        qz0<O> b2 = qy0Var.b(obj2);
        uw0.a(b2, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", qy0Var);
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.hy0
    final /* synthetic */ void b(Object obj) {
        a((qz0) obj);
    }
}
