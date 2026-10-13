package j;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: AsyncTimeout.java */
/* loaded from: classes2.dex */
public class a extends v {

    /* renamed from: h, reason: collision with root package name */
    private static final long f19626h = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: i, reason: collision with root package name */
    private static final long f19627i = TimeUnit.MILLISECONDS.toNanos(f19626h);

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    static a f19628j;

    /* renamed from: e, reason: collision with root package name */
    private boolean f19629e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private a f19630f;

    /* renamed from: g, reason: collision with root package name */
    private long f19631g;

    /* compiled from: AsyncTimeout.java */
    /* renamed from: j.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0251a implements t {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ t f19632e;

        C0251a(t tVar) {
            this.f19632e = tVar;
        }

        @Override // j.t
        public void a(j.c cVar, long j2) {
            w.a(cVar.f19640f, 0L, j2);
            while (true) {
                long j3 = 0;
                if (j2 <= 0) {
                    return;
                }
                q qVar = cVar.f19639e;
                while (true) {
                    if (j3 >= 65536) {
                        break;
                    }
                    j3 += qVar.f19675c - qVar.f19674b;
                    if (j3 >= j2) {
                        j3 = j2;
                        break;
                    }
                    qVar = qVar.f19678f;
                }
                a.this.g();
                try {
                    try {
                        this.f19632e.a(cVar, j3);
                        j2 -= j3;
                        a.this.a(true);
                    } catch (IOException e2) {
                        throw a.this.a(e2);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }
        }

        @Override // j.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            a.this.g();
            try {
                try {
                    this.f19632e.close();
                    a.this.a(true);
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // j.t, java.io.Flushable
        public void flush() {
            a.this.g();
            try {
                try {
                    this.f19632e.flush();
                    a.this.a(true);
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // j.t
        public v timeout() {
            return a.this;
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f19632e + ")";
        }
    }

    /* compiled from: AsyncTimeout.java */
    /* loaded from: classes2.dex */
    class b implements u {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ u f19634e;

        b(u uVar) {
            this.f19634e = uVar;
        }

        @Override // j.u
        public long b(j.c cVar, long j2) {
            a.this.g();
            try {
                try {
                    long b2 = this.f19634e.b(cVar, j2);
                    a.this.a(true);
                    return b2;
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                try {
                    this.f19634e.close();
                    a.this.a(true);
                } catch (IOException e2) {
                    throw a.this.a(e2);
                }
            } catch (Throwable th) {
                a.this.a(false);
                throw th;
            }
        }

        @Override // j.u
        public v timeout() {
            return a.this;
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f19634e + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsyncTimeout.java */
    /* loaded from: classes2.dex */
    public static final class c extends Thread {
        c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0015, code lost:
        
            r1.i();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<j.a> r0 = j.a.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                j.a r1 = j.a.j()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                j.a r2 = j.a.f19628j     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                j.a.f19628j = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.i()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L1d
            L1c:
                throw r1
            L1d:
                goto L1c
            */
            throw new UnsupportedOperationException("Method not decompiled: j.a.c.run():void");
        }
    }

    private static synchronized void a(a aVar, long j2, boolean z) {
        synchronized (a.class) {
            if (f19628j == null) {
                f19628j = new a();
                new c().start();
            }
            long nanoTime = System.nanoTime();
            if (j2 != 0 && z) {
                aVar.f19631g = Math.min(j2, aVar.c() - nanoTime) + nanoTime;
            } else if (j2 != 0) {
                aVar.f19631g = j2 + nanoTime;
            } else if (z) {
                aVar.f19631g = aVar.c();
            } else {
                throw new AssertionError();
            }
            long b2 = aVar.b(nanoTime);
            a aVar2 = f19628j;
            while (aVar2.f19630f != null && b2 >= aVar2.f19630f.b(nanoTime)) {
                aVar2 = aVar2.f19630f;
            }
            aVar.f19630f = aVar2.f19630f;
            aVar2.f19630f = aVar;
            if (aVar2 == f19628j) {
                a.class.notify();
            }
        }
    }

    private long b(long j2) {
        return this.f19631g - j2;
    }

    @Nullable
    static a j() {
        a aVar = f19628j.f19630f;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            a.class.wait(f19626h);
            if (f19628j.f19630f != null || System.nanoTime() - nanoTime < f19627i) {
                return null;
            }
            return f19628j;
        }
        long b2 = aVar.b(System.nanoTime());
        if (b2 > 0) {
            long j2 = b2 / 1000000;
            a.class.wait(j2, (int) (b2 - (1000000 * j2)));
            return null;
        }
        f19628j.f19630f = aVar.f19630f;
        aVar.f19630f = null;
        return aVar;
    }

    public final void g() {
        if (!this.f19629e) {
            long f2 = f();
            boolean d2 = d();
            if (f2 != 0 || d2) {
                this.f19629e = true;
                a(this, f2, d2);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    public final boolean h() {
        if (!this.f19629e) {
            return false;
        }
        this.f19629e = false;
        return a(this);
    }

    protected void i() {
    }

    protected IOException b(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    private static synchronized boolean a(a aVar) {
        synchronized (a.class) {
            for (a aVar2 = f19628j; aVar2 != null; aVar2 = aVar2.f19630f) {
                if (aVar2.f19630f == aVar) {
                    aVar2.f19630f = aVar.f19630f;
                    aVar.f19630f = null;
                    return false;
                }
            }
            return true;
        }
    }

    public final t a(t tVar) {
        return new C0251a(tVar);
    }

    public final u a(u uVar) {
        return new b(uVar);
    }

    final void a(boolean z) {
        if (h() && z) {
            throw b((IOException) null);
        }
    }

    final IOException a(IOException iOException) {
        return !h() ? iOException : b(iOException);
    }
}
