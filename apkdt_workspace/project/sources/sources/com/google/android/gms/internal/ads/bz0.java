package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class bz0<V> extends cx0 implements Future<V> {
    protected abstract Future<? extends V> b();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return b().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return b().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return b().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return b().isDone();
    }

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) {
        return b().get(j2, timeUnit);
    }
}
