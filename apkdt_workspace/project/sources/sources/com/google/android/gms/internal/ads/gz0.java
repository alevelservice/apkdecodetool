package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.mz0;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gz0 extends nz0 {
    public static <V> qz0<V> a(@NullableDecl V v) {
        if (v == null) {
            return mz0.a.f8257g;
        }
        return new mz0.a(v);
    }

    public static <V> lz0<V> b(Iterable<? extends qz0<? extends V>> iterable) {
        return new lz0<>(false, jx0.zzf(iterable), null);
    }

    public static <V> V b(Future<V> future) {
        uw0.a(future);
        try {
            return (V) k01.a(future);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new az0((Error) cause);
            }
            throw new h01(cause);
        }
    }

    public static <V> qz0<V> a(Throwable th) {
        uw0.a(th);
        return new mz0.b(th);
    }

    public static <V, X extends Throwable> qz0<V> a(qz0<? extends V> qz0Var, Class<X> cls, qy0<? super X, ? extends V> qy0Var, Executor executor) {
        return dy0.a(qz0Var, cls, qy0Var, executor);
    }

    public static <V> qz0<V> a(qz0<V> qz0Var, long j2, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return qz0Var.isDone() ? qz0Var : a01.a(qz0Var, j2, timeUnit, scheduledExecutorService);
    }

    public static <I, O> qz0<O> a(qz0<I> qz0Var, qy0<? super I, ? extends O> qy0Var, Executor executor) {
        return hy0.a(qz0Var, qy0Var, executor);
    }

    public static <I, O> qz0<O> a(qz0<I> qz0Var, pw0<? super I, ? extends O> pw0Var, Executor executor) {
        return hy0.a(qz0Var, pw0Var, executor);
    }

    public static <V> qz0<List<V>> a(Iterable<? extends qz0<? extends V>> iterable) {
        return new ry0(jx0.zzf(iterable), true);
    }

    @SafeVarargs
    public static <V> lz0<V> a(qz0<? extends V>... qz0VarArr) {
        return new lz0<>(false, jx0.zzb(qz0VarArr), null);
    }

    public static <V> void a(qz0<V> qz0Var, hz0<? super V> hz0Var, Executor executor) {
        uw0.a(hz0Var);
        qz0Var.a(new iz0(qz0Var, hz0Var), executor);
    }

    public static <V> V a(Future<V> future) {
        if (future.isDone()) {
            return (V) k01.a(future);
        }
        throw new IllegalStateException(ww0.a("Future was expected to be done: %s", future));
    }
}
