package kotlinx.coroutines;

import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;

/* compiled from: DefaultExecutor.kt */
/* loaded from: classes2.dex */
public final class k0 extends EventLoopImplBase implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: j, reason: collision with root package name */
    private static final long f20103j;

    /* renamed from: k, reason: collision with root package name */
    public static final k0 f20104k;

    static {
        Long l2;
        k0 k0Var = new k0();
        f20104k = k0Var;
        w0.a(k0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        kotlin.jvm.d.h.a((Object) l2, "try {\n            java.l…AULT_KEEP_ALIVE\n        }");
        f20103j = timeUnit.toNanos(l2.longValue());
    }

    private k0() {
    }

    private final synchronized Thread A() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean B() {
        int i2 = debugStatus;
        return i2 == 2 || i2 == 3;
    }

    private final synchronized boolean C() {
        if (B()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    private final synchronized void z() {
        if (B()) {
            debugStatus = 3;
            v();
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean t;
        a2.f19985b.a(this);
        c2.a().a();
        try {
            if (!C()) {
                if (t) {
                    return;
                } else {
                    return;
                }
            }
            long j2 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long u = u();
                if (u == Long.MAX_VALUE) {
                    if (j2 == Long.MAX_VALUE) {
                        long b2 = c2.a().b();
                        if (j2 == Long.MAX_VALUE) {
                            j2 = f20103j + b2;
                        }
                        long j3 = j2 - b2;
                        if (j3 <= 0) {
                            _thread = null;
                            z();
                            c2.a().d();
                            if (t()) {
                                return;
                            }
                            s();
                            return;
                        }
                        u = kotlin.ranges.q.b(u, j3);
                    } else {
                        u = kotlin.ranges.q.b(u, f20103j);
                    }
                }
                if (u > 0) {
                    if (B()) {
                        _thread = null;
                        z();
                        c2.a().d();
                        if (t()) {
                            return;
                        }
                        s();
                        return;
                    }
                    c2.a().a(this, u);
                }
            }
        } finally {
            _thread = null;
            z();
            c2.a().d();
            if (!t()) {
                s();
            }
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplBase
    @NotNull
    protected Thread s() {
        Thread thread = _thread;
        return thread != null ? thread : A();
    }
}
