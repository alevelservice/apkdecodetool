package i;

import i.g0.f.g;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* compiled from: ConnectionPool.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: g, reason: collision with root package name */
    private static final Executor f18730g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), i.g0.c.a("OkHttp ConnectionPool", true));

    /* renamed from: a, reason: collision with root package name */
    private final int f18731a;

    /* renamed from: b, reason: collision with root package name */
    private final long f18732b;

    /* renamed from: c, reason: collision with root package name */
    private final Runnable f18733c;

    /* renamed from: d, reason: collision with root package name */
    private final Deque<i.g0.f.c> f18734d;

    /* renamed from: e, reason: collision with root package name */
    final i.g0.f.d f18735e;

    /* renamed from: f, reason: collision with root package name */
    boolean f18736f;

    /* compiled from: ConnectionPool.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long a2 = j.this.a(System.nanoTime());
                if (a2 == -1) {
                    return;
                }
                if (a2 > 0) {
                    long j2 = a2 / 1000000;
                    long j3 = a2 - (1000000 * j2);
                    synchronized (j.this) {
                        try {
                            j.this.wait(j2, (int) j3);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public i.g0.f.c a(i.a aVar, i.g0.f.g gVar, d0 d0Var) {
        for (i.g0.f.c cVar : this.f18734d) {
            if (cVar.a(aVar, d0Var)) {
                gVar.a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(i.g0.f.c cVar) {
        if (!this.f18736f) {
            this.f18736f = true;
            f18730g.execute(this.f18733c);
        }
        this.f18734d.add(cVar);
    }

    public j(int i2, long j2, TimeUnit timeUnit) {
        this.f18733c = new a();
        this.f18734d = new ArrayDeque();
        this.f18735e = new i.g0.f.d();
        this.f18731a = i2;
        this.f18732b = timeUnit.toNanos(j2);
        if (j2 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Socket a(i.a aVar, i.g0.f.g gVar) {
        for (i.g0.f.c cVar : this.f18734d) {
            if (cVar.a(aVar, null) && cVar.c() && cVar != gVar.c()) {
                return gVar.a(cVar);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(i.g0.f.c cVar) {
        if (!cVar.f18495k && this.f18731a != 0) {
            notifyAll();
            return false;
        }
        this.f18734d.remove(cVar);
        return true;
    }

    long a(long j2) {
        synchronized (this) {
            long j3 = Long.MIN_VALUE;
            i.g0.f.c cVar = null;
            int i2 = 0;
            int i3 = 0;
            for (i.g0.f.c cVar2 : this.f18734d) {
                if (a(cVar2, j2) > 0) {
                    i3++;
                } else {
                    i2++;
                    long j4 = j2 - cVar2.o;
                    if (j4 > j3) {
                        cVar = cVar2;
                        j3 = j4;
                    }
                }
            }
            if (j3 < this.f18732b && i2 <= this.f18731a) {
                if (i2 > 0) {
                    return this.f18732b - j3;
                }
                if (i3 > 0) {
                    return this.f18732b;
                }
                this.f18736f = false;
                return -1L;
            }
            this.f18734d.remove(cVar);
            i.g0.c.a(cVar.e());
            return 0L;
        }
    }

    private int a(i.g0.f.c cVar, long j2) {
        List<Reference<i.g0.f.g>> list = cVar.n;
        int i2 = 0;
        while (i2 < list.size()) {
            Reference<i.g0.f.g> reference = list.get(i2);
            if (reference.get() != null) {
                i2++;
            } else {
                okhttp3.internal.platform.e.c().a("A connection to " + cVar.d().a().k() + " was leaked. Did you forget to close a response body?", ((g.a) reference).f18520a);
                list.remove(i2);
                cVar.f18495k = true;
                if (list.isEmpty()) {
                    cVar.o = j2 - this.f18732b;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
