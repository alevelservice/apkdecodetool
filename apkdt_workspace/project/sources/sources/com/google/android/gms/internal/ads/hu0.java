package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hu0<E, V> implements qz0<V> {

    /* renamed from: e, reason: collision with root package name */
    private final E f7165e;

    /* renamed from: f, reason: collision with root package name */
    private final String f7166f;

    /* renamed from: g, reason: collision with root package name */
    private final qz0<V> f7167g;

    @VisibleForTesting(otherwise = 3)
    public hu0(E e2, String str, qz0<V> qz0Var) {
        this.f7165e = e2;
        this.f7166f = str;
        this.f7167g = qz0Var;
    }

    @Override // com.google.android.gms.internal.ads.qz0
    public final void a(Runnable runnable, Executor executor) {
        this.f7167g.a(runnable, executor);
    }

    public final String b() {
        return this.f7166f;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f7167g.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.f7167g.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f7167g.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f7167g.isDone();
    }

    public final String toString() {
        String str = this.f7166f;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }

    public final E a() {
        return this.f7165e;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j2, TimeUnit timeUnit) {
        return this.f7167g.get(j2, timeUnit);
    }
}
