package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class fz0<V> extends bz0<V> implements qz0<V> {
    @Override // com.google.android.gms.internal.ads.qz0
    public void a(Runnable runnable, Executor executor) {
        c().a(runnable, executor);
    }

    protected abstract qz0<? extends V> c();
}
