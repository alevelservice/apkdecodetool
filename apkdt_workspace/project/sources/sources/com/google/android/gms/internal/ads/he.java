package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public class he<T> implements qz0<T> {

    /* renamed from: e, reason: collision with root package name */
    private final b01<T> f7044e = b01.g();

    public final boolean a(Throwable th) {
        boolean a2 = this.f7044e.a(th);
        a(a2);
        return a2;
    }

    public final boolean b(@Nullable T t) {
        boolean a2 = this.f7044e.a((b01<T>) t);
        a(a2);
        return a2;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f7044e.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.f7044e.get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f7044e.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f7044e.isDone();
    }

    private static boolean a(boolean z) {
        if (!z) {
            com.google.android.gms.ads.internal.n.g().b(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public T get(long j2, TimeUnit timeUnit) {
        return this.f7044e.get(j2, timeUnit);
    }

    @Override // com.google.android.gms.internal.ads.qz0
    public void a(Runnable runnable, Executor executor) {
        this.f7044e.a(runnable, executor);
    }
}
