package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.a1;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: SimpleTimeLimiter.java */
@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class g implements i {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f14263a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Exception a(Exception exc, boolean z) {
        b(exc, z);
        throw null;
    }

    private static Exception b(Exception exc, boolean z) {
        Throwable cause = exc.getCause();
        if (cause != null) {
            if (z) {
                cause.setStackTrace((StackTraceElement[]) a1.a(cause.getStackTrace(), exc.getStackTrace(), StackTraceElement.class));
            }
            if (!(cause instanceof Exception)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw exc;
            }
            throw ((Exception) cause);
        }
        throw exc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> T a(Callable<T> callable, long j2, TimeUnit timeUnit, boolean z) {
        e.i.c.a.j.a(callable);
        e.i.c.a.j.a(timeUnit);
        a(j2);
        Future<T> submit = this.f14263a.submit(callable);
        try {
            if (z) {
                try {
                    return submit.get(j2, timeUnit);
                } catch (InterruptedException e2) {
                    submit.cancel(true);
                    throw e2;
                }
            }
            return (T) k.a(submit, j2, timeUnit);
        } catch (ExecutionException e3) {
            b(e3, true);
            throw null;
        } catch (TimeoutException e4) {
            submit.cancel(true);
            throw new j(e4);
        }
    }

    private static void a(long j2) {
        e.i.c.a.j.a(j2 > 0, "timeout must be positive: %s", j2);
    }
}
