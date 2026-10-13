package com.google.android.gms.measurement.internal;

import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class d4 extends e5 {

    /* renamed from: l, reason: collision with root package name */
    private static final AtomicLong f12826l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c, reason: collision with root package name */
    private g4 f12827c;

    /* renamed from: d, reason: collision with root package name */
    private g4 f12828d;

    /* renamed from: e, reason: collision with root package name */
    private final PriorityBlockingQueue<h4<?>> f12829e;

    /* renamed from: f, reason: collision with root package name */
    private final BlockingQueue<h4<?>> f12830f;

    /* renamed from: g, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f12831g;

    /* renamed from: h, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f12832h;

    /* renamed from: i, reason: collision with root package name */
    private final Object f12833i;

    /* renamed from: j, reason: collision with root package name */
    private final Semaphore f12834j;

    /* renamed from: k, reason: collision with root package name */
    private volatile boolean f12835k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d4(j4 j4Var) {
        super(j4Var);
        this.f12833i = new Object();
        this.f12834j = new Semaphore(2);
        this.f12829e = new PriorityBlockingQueue<>();
        this.f12830f = new LinkedBlockingQueue();
        this.f12831g = new f4(this, "Thread death: Uncaught exception on worker thread");
        this.f12832h = new f4(this, "Thread death: Uncaught exception on network thread");
    }

    public final <V> Future<V> a(Callable<V> callable) {
        m();
        com.google.android.gms.common.internal.m.a(callable);
        h4<?> h4Var = new h4<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f12827c) {
            if (!this.f12829e.isEmpty()) {
                zzab().t().a("Callable skipped the worker queue.");
            }
            h4Var.run();
        } else {
            a(h4Var);
        }
        return h4Var;
    }

    public final <V> Future<V> b(Callable<V> callable) {
        m();
        com.google.android.gms.common.internal.m.a(callable);
        h4<?> h4Var = new h4<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f12827c) {
            h4Var.run();
        } else {
            a(h4Var);
        }
        return h4Var;
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final void f() {
        if (Thread.currentThread() != this.f12828d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.f5
    public final void g() {
        if (Thread.currentThread() != this.f12827c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean o() {
        return false;
    }

    public final boolean q() {
        return Thread.currentThread() == this.f12827c;
    }

    public final void b(Runnable runnable) {
        m();
        com.google.android.gms.common.internal.m.a(runnable);
        h4<?> h4Var = new h4<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f12833i) {
            this.f12830f.add(h4Var);
            if (this.f12828d == null) {
                this.f12828d = new g4(this, "Measurement Network", this.f12830f);
                this.f12828d.setUncaughtExceptionHandler(this.f12832h);
                this.f12828d.start();
            } else {
                this.f12828d.a();
            }
        }
    }

    public final void a(Runnable runnable) {
        m();
        com.google.android.gms.common.internal.m.a(runnable);
        a(new h4<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T a(AtomicReference<T> atomicReference, long j2, String str, Runnable runnable) {
        synchronized (atomicReference) {
            b().a(runnable);
            try {
                atomicReference.wait(15000L);
            } catch (InterruptedException unused) {
                h3 t = zzab().t();
                String valueOf = String.valueOf(str);
                t.a(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t2 = atomicReference.get();
        if (t2 == null) {
            h3 t3 = zzab().t();
            String valueOf2 = String.valueOf(str);
            t3.a(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        return t2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ g4 b(d4 d4Var, g4 g4Var) {
        d4Var.f12828d = null;
        return null;
    }

    private final void a(h4<?> h4Var) {
        synchronized (this.f12833i) {
            this.f12829e.add(h4Var);
            if (this.f12827c == null) {
                this.f12827c = new g4(this, "Measurement Worker", this.f12829e);
                this.f12827c.setUncaughtExceptionHandler(this.f12831g);
                this.f12827c.start();
            } else {
                this.f12827c.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ g4 a(d4 d4Var, g4 g4Var) {
        d4Var.f12827c = null;
        return null;
    }
}
