package i.g0.i;

import i.g0.i.h;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Http2Connection.java */
/* loaded from: classes2.dex */
public final class g implements Closeable {
    private static final ExecutorService y = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), i.g0.c.a("OkHttp Http2Connection", true));

    /* renamed from: e, reason: collision with root package name */
    final boolean f18615e;

    /* renamed from: f, reason: collision with root package name */
    final h f18616f;

    /* renamed from: h, reason: collision with root package name */
    final String f18618h;

    /* renamed from: i, reason: collision with root package name */
    int f18619i;

    /* renamed from: j, reason: collision with root package name */
    int f18620j;

    /* renamed from: k, reason: collision with root package name */
    boolean f18621k;

    /* renamed from: l, reason: collision with root package name */
    private final ScheduledExecutorService f18622l;
    private final ExecutorService m;
    final l n;
    private boolean o;
    long q;
    final Socket u;
    final i.g0.i.j v;
    final j w;

    /* renamed from: g, reason: collision with root package name */
    final Map<Integer, i.g0.i.i> f18617g = new LinkedHashMap();
    long p = 0;
    m r = new m();
    final m s = new m();
    boolean t = false;
    final Set<Integer> x = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class a extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f18623f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ i.g0.i.b f18624g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i2, i.g0.i.b bVar) {
            super(str, objArr);
            this.f18623f = i2;
            this.f18624g = bVar;
        }

        @Override // i.g0.b
        public void b() {
            try {
                g.this.b(this.f18623f, this.f18624g);
            } catch (IOException unused) {
                g.this.m();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class b extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f18626f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ long f18627g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i2, long j2) {
            super(str, objArr);
            this.f18626f = i2;
            this.f18627g = j2;
        }

        @Override // i.g0.b
        public void b() {
            try {
                g.this.v.a(this.f18626f, this.f18627g);
            } catch (IOException unused) {
                g.this.m();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class c extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f18629f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ List f18630g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, Object[] objArr, int i2, List list) {
            super(str, objArr);
            this.f18629f = i2;
            this.f18630g = list;
        }

        @Override // i.g0.b
        public void b() {
            if (g.this.n.a(this.f18629f, this.f18630g)) {
                try {
                    g.this.v.a(this.f18629f, i.g0.i.b.CANCEL);
                    synchronized (g.this) {
                        g.this.x.remove(Integer.valueOf(this.f18629f));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class d extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f18632f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ List f18633g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ boolean f18634h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i2, List list, boolean z) {
            super(str, objArr);
            this.f18632f = i2;
            this.f18633g = list;
            this.f18634h = z;
        }

        @Override // i.g0.b
        public void b() {
            boolean a2 = g.this.n.a(this.f18632f, this.f18633g, this.f18634h);
            if (a2) {
                try {
                    g.this.v.a(this.f18632f, i.g0.i.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (a2 || this.f18634h) {
                synchronized (g.this) {
                    g.this.x.remove(Integer.valueOf(this.f18632f));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class e extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f18636f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ j.c f18637g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f18638h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ boolean f18639i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i2, j.c cVar, int i3, boolean z) {
            super(str, objArr);
            this.f18636f = i2;
            this.f18637g = cVar;
            this.f18638h = i3;
            this.f18639i = z;
        }

        @Override // i.g0.b
        public void b() {
            try {
                boolean a2 = g.this.n.a(this.f18636f, this.f18637g, this.f18638h, this.f18639i);
                if (a2) {
                    g.this.v.a(this.f18636f, i.g0.i.b.CANCEL);
                }
                if (a2 || this.f18639i) {
                    synchronized (g.this) {
                        g.this.x.remove(Integer.valueOf(this.f18636f));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class f extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f18641f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ i.g0.i.b f18642g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i2, i.g0.i.b bVar) {
            super(str, objArr);
            this.f18641f = i2;
            this.f18642g = bVar;
        }

        @Override // i.g0.b
        public void b() {
            g.this.n.a(this.f18641f, this.f18642g);
            synchronized (g.this) {
                g.this.x.remove(Integer.valueOf(this.f18641f));
            }
        }
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public static abstract class h {

        /* renamed from: a, reason: collision with root package name */
        public static final h f18652a = new a();

        /* compiled from: Http2Connection.java */
        /* loaded from: classes2.dex */
        class a extends h {
            a() {
            }

            @Override // i.g0.i.g.h
            public void a(i.g0.i.i iVar) {
                iVar.a(i.g0.i.b.REFUSED_STREAM);
            }
        }

        public void a(g gVar) {
        }

        public abstract void a(i.g0.i.i iVar);
    }

    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    final class i extends i.g0.b {

        /* renamed from: f, reason: collision with root package name */
        final boolean f18653f;

        /* renamed from: g, reason: collision with root package name */
        final int f18654g;

        /* renamed from: h, reason: collision with root package name */
        final int f18655h;

        i(boolean z, int i2, int i3) {
            super("OkHttp %s ping %08x%08x", g.this.f18618h, Integer.valueOf(i2), Integer.valueOf(i3));
            this.f18653f = z;
            this.f18654g = i2;
            this.f18655h = i3;
        }

        @Override // i.g0.b
        public void b() {
            g.this.a(this.f18653f, this.f18654g, this.f18655h);
        }
    }

    g(C0223g c0223g) {
        this.n = c0223g.f18649f;
        boolean z = c0223g.f18650g;
        this.f18615e = z;
        this.f18616f = c0223g.f18648e;
        this.f18620j = z ? 1 : 2;
        if (c0223g.f18650g) {
            this.f18620j += 2;
        }
        if (c0223g.f18650g) {
            this.r.a(7, 16777216);
        }
        this.f18618h = c0223g.f18645b;
        this.f18622l = new ScheduledThreadPoolExecutor(1, i.g0.c.a(i.g0.c.a("OkHttp %s Writer", this.f18618h), false));
        if (c0223g.f18651h != 0) {
            ScheduledExecutorService scheduledExecutorService = this.f18622l;
            i iVar = new i(false, 0, 0);
            int i2 = c0223g.f18651h;
            scheduledExecutorService.scheduleAtFixedRate(iVar, i2, i2, TimeUnit.MILLISECONDS);
        }
        this.m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), i.g0.c.a(i.g0.c.a("OkHttp %s Push Observer", this.f18618h), true));
        this.s.a(7, 65535);
        this.s.a(5, 16384);
        this.q = this.s.c();
        this.u = c0223g.f18644a;
        this.v = new i.g0.i.j(c0223g.f18647d, this.f18615e);
        this.w = new j(new i.g0.i.h(c0223g.f18646c, this.f18615e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            a(i.g0.i.b.PROTOCOL_ERROR, i.g0.i.b.PROTOCOL_ERROR);
        } catch (IOException unused) {
        }
    }

    synchronized i.g0.i.i c(int i2) {
        return this.f18617g.get(Integer.valueOf(i2));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a(i.g0.i.b.NO_ERROR, i.g0.i.b.CANCEL);
    }

    boolean d(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized i.g0.i.i e(int i2) {
        i.g0.i.i remove;
        remove = this.f18617g.remove(Integer.valueOf(i2));
        notifyAll();
        return remove;
    }

    public void flush() {
        this.v.flush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void h(long j2) {
        this.p += j2;
        if (this.p >= this.r.c() / 2) {
            a(0, this.p);
            this.p = 0L;
        }
    }

    public synchronized boolean i() {
        return this.f18621k;
    }

    public synchronized int j() {
        return this.s.b(Integer.MAX_VALUE);
    }

    public void k() {
        a(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0043 A[Catch: all -> 0x0075, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000e, B:9:0x0013, B:11:0x0017, B:13:0x002b, B:15:0x0033, B:19:0x003d, B:21:0x0043, B:22:0x004c, B:36:0x006f, B:37:0x0074), top: B:5:0x0007, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private i.g0.i.i b(int r11, java.util.List<i.g0.i.c> r12, boolean r13) {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            i.g0.i.j r7 = r10.v
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L78
            int r0 = r10.f18620j     // Catch: java.lang.Throwable -> L75
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L13
            i.g0.i.b r0 = i.g0.i.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L75
            r10.a(r0)     // Catch: java.lang.Throwable -> L75
        L13:
            boolean r0 = r10.f18621k     // Catch: java.lang.Throwable -> L75
            if (r0 != 0) goto L6f
            int r8 = r10.f18620j     // Catch: java.lang.Throwable -> L75
            int r0 = r10.f18620j     // Catch: java.lang.Throwable -> L75
            int r0 = r0 + 2
            r10.f18620j = r0     // Catch: java.lang.Throwable -> L75
            i.g0.i.i r9 = new i.g0.i.i     // Catch: java.lang.Throwable -> L75
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L75
            if (r13 == 0) goto L3c
            long r0 = r10.q     // Catch: java.lang.Throwable -> L75
            r2 = 0
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 == 0) goto L3c
            long r0 = r9.f18676b     // Catch: java.lang.Throwable -> L75
            int r13 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r13 != 0) goto L3a
            goto L3c
        L3a:
            r13 = 0
            goto L3d
        L3c:
            r13 = 1
        L3d:
            boolean r0 = r9.g()     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L4c
            java.util.Map<java.lang.Integer, i.g0.i.i> r0 = r10.f18617g     // Catch: java.lang.Throwable -> L75
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L75
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L75
        L4c:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L75
            if (r11 != 0) goto L55
            i.g0.i.j r0 = r10.v     // Catch: java.lang.Throwable -> L78
            r0.a(r6, r8, r11, r12)     // Catch: java.lang.Throwable -> L78
            goto L5e
        L55:
            boolean r0 = r10.f18615e     // Catch: java.lang.Throwable -> L78
            if (r0 != 0) goto L67
            i.g0.i.j r0 = r10.v     // Catch: java.lang.Throwable -> L78
            r0.a(r11, r8, r12)     // Catch: java.lang.Throwable -> L78
        L5e:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L78
            if (r13 == 0) goto L66
            i.g0.i.j r11 = r10.v
            r11.flush()
        L66:
            return r9
        L67:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L78
            java.lang.String r12 = "client streams shouldn't have associated stream IDs"
            r11.<init>(r12)     // Catch: java.lang.Throwable -> L78
            throw r11     // Catch: java.lang.Throwable -> L78
        L6f:
            i.g0.i.a r11 = new i.g0.i.a     // Catch: java.lang.Throwable -> L75
            r11.<init>()     // Catch: java.lang.Throwable -> L75
            throw r11     // Catch: java.lang.Throwable -> L75
        L75:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L75
            throw r11     // Catch: java.lang.Throwable -> L78
        L78:
            r11 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L78
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: i.g0.i.g.b(int, java.util.List, boolean):i.g0.i.i");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i2, i.g0.i.b bVar) {
        try {
            this.f18622l.execute(new a("OkHttp %s stream %d", new Object[]{this.f18618h, Integer.valueOf(i2)}, i2, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    public i.g0.i.i a(List<i.g0.i.c> list, boolean z) {
        return b(0, list, z);
    }

    /* compiled from: Http2Connection.java */
    /* renamed from: i.g0.i.g$g, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0223g {

        /* renamed from: a, reason: collision with root package name */
        Socket f18644a;

        /* renamed from: b, reason: collision with root package name */
        String f18645b;

        /* renamed from: c, reason: collision with root package name */
        j.e f18646c;

        /* renamed from: d, reason: collision with root package name */
        j.d f18647d;

        /* renamed from: e, reason: collision with root package name */
        h f18648e = h.f18652a;

        /* renamed from: f, reason: collision with root package name */
        l f18649f = l.f18712a;

        /* renamed from: g, reason: collision with root package name */
        boolean f18650g;

        /* renamed from: h, reason: collision with root package name */
        int f18651h;

        public C0223g(boolean z) {
            this.f18650g = z;
        }

        public C0223g a(Socket socket, String str, j.e eVar, j.d dVar) {
            this.f18644a = socket;
            this.f18645b = str;
            this.f18646c = eVar;
            this.f18647d = dVar;
            return this;
        }

        public C0223g a(h hVar) {
            this.f18648e = hVar;
            return this;
        }

        public C0223g a(int i2) {
            this.f18651h = i2;
            return this;
        }

        public g a() {
            return new g(this);
        }
    }

    public void a(int i2, boolean z, j.c cVar, long j2) {
        int min;
        long j3;
        if (j2 == 0) {
            this.v.a(z, i2, cVar, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (this.q <= 0) {
                    try {
                        if (this.f18617g.containsKey(Integer.valueOf(i2))) {
                            wait();
                        } else {
                            throw new IOException("stream closed");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j2, this.q), this.v.j());
                j3 = min;
                this.q -= j3;
            }
            j2 -= j3;
            this.v.a(z && j2 == 0, i2, cVar, min);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Connection.java */
    /* loaded from: classes2.dex */
    public class j extends i.g0.b implements h.b {

        /* renamed from: f, reason: collision with root package name */
        final i.g0.i.h f18657f;

        /* compiled from: Http2Connection.java */
        /* loaded from: classes2.dex */
        class a extends i.g0.b {

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ i.g0.i.i f18659f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, Object[] objArr, i.g0.i.i iVar) {
                super(str, objArr);
                this.f18659f = iVar;
            }

            @Override // i.g0.b
            public void b() {
                try {
                    g.this.f18616f.a(this.f18659f);
                } catch (IOException e2) {
                    okhttp3.internal.platform.e.c().a(4, "Http2Connection.Listener failure for " + g.this.f18618h, e2);
                    try {
                        this.f18659f.a(i.g0.i.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* compiled from: Http2Connection.java */
        /* loaded from: classes2.dex */
        class b extends i.g0.b {
            b(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // i.g0.b
            public void b() {
                g gVar = g.this;
                gVar.f18616f.a(gVar);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Http2Connection.java */
        /* loaded from: classes2.dex */
        public class c extends i.g0.b {

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ m f18662f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(String str, Object[] objArr, m mVar) {
                super(str, objArr);
                this.f18662f = mVar;
            }

            @Override // i.g0.b
            public void b() {
                try {
                    g.this.v.a(this.f18662f);
                } catch (IOException unused) {
                    g.this.m();
                }
            }
        }

        j(i.g0.i.h hVar) {
            super("OkHttp %s", g.this.f18618h);
            this.f18657f = hVar;
        }

        @Override // i.g0.i.h.b
        public void a() {
        }

        @Override // i.g0.i.h.b
        public void a(int i2, int i3, int i4, boolean z) {
        }

        @Override // i.g0.i.h.b
        public void a(boolean z, int i2, j.e eVar, int i3) {
            if (g.this.d(i2)) {
                g.this.a(i2, eVar, i3, z);
                return;
            }
            i.g0.i.i c2 = g.this.c(i2);
            if (c2 == null) {
                g.this.c(i2, i.g0.i.b.PROTOCOL_ERROR);
                long j2 = i3;
                g.this.h(j2);
                eVar.skip(j2);
                return;
            }
            c2.a(eVar, i3);
            if (z) {
                c2.i();
            }
        }

        @Override // i.g0.b
        protected void b() {
            i.g0.i.b bVar;
            g gVar;
            i.g0.i.b bVar2 = i.g0.i.b.INTERNAL_ERROR;
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    this.f18657f.a(this);
                    do {
                    } while (this.f18657f.a(false, (h.b) this));
                    bVar = i.g0.i.b.NO_ERROR;
                } catch (IOException unused) {
                }
                try {
                    bVar2 = i.g0.i.b.CANCEL;
                    gVar = g.this;
                } catch (IOException unused2) {
                    bVar = i.g0.i.b.PROTOCOL_ERROR;
                    bVar2 = i.g0.i.b.PROTOCOL_ERROR;
                    gVar = g.this;
                    gVar.a(bVar, bVar2);
                    i.g0.c.a(this.f18657f);
                }
            } catch (IOException unused3) {
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                try {
                    g.this.a(bVar, bVar2);
                } catch (IOException unused4) {
                }
                i.g0.c.a(this.f18657f);
                throw th;
            }
            gVar.a(bVar, bVar2);
            i.g0.c.a(this.f18657f);
        }

        @Override // i.g0.i.h.b
        public void a(boolean z, int i2, int i3, List<i.g0.i.c> list) {
            if (g.this.d(i2)) {
                g.this.a(i2, list, z);
                return;
            }
            synchronized (g.this) {
                i.g0.i.i c2 = g.this.c(i2);
                if (c2 == null) {
                    if (g.this.f18621k) {
                        return;
                    }
                    if (i2 <= g.this.f18619i) {
                        return;
                    }
                    if (i2 % 2 == g.this.f18620j % 2) {
                        return;
                    }
                    i.g0.i.i iVar = new i.g0.i.i(i2, g.this, false, z, i.g0.c.b(list));
                    g.this.f18619i = i2;
                    g.this.f18617g.put(Integer.valueOf(i2), iVar);
                    g.y.execute(new a("OkHttp %s stream %d", new Object[]{g.this.f18618h, Integer.valueOf(i2)}, iVar));
                    return;
                }
                c2.a(list);
                if (z) {
                    c2.i();
                }
            }
        }

        @Override // i.g0.i.h.b
        public void a(int i2, i.g0.i.b bVar) {
            if (g.this.d(i2)) {
                g.this.a(i2, bVar);
                return;
            }
            i.g0.i.i e2 = g.this.e(i2);
            if (e2 != null) {
                e2.c(bVar);
            }
        }

        @Override // i.g0.i.h.b
        public void a(boolean z, m mVar) {
            i.g0.i.i[] iVarArr;
            long j2;
            int i2;
            synchronized (g.this) {
                int c2 = g.this.s.c();
                if (z) {
                    g.this.s.a();
                }
                g.this.s.a(mVar);
                a(mVar);
                int c3 = g.this.s.c();
                iVarArr = null;
                if (c3 == -1 || c3 == c2) {
                    j2 = 0;
                } else {
                    j2 = c3 - c2;
                    if (!g.this.t) {
                        g.this.t = true;
                    }
                    if (!g.this.f18617g.isEmpty()) {
                        iVarArr = (i.g0.i.i[]) g.this.f18617g.values().toArray(new i.g0.i.i[g.this.f18617g.size()]);
                    }
                }
                g.y.execute(new b("OkHttp %s settings", g.this.f18618h));
            }
            if (iVarArr == null || j2 == 0) {
                return;
            }
            for (i.g0.i.i iVar : iVarArr) {
                synchronized (iVar) {
                    iVar.a(j2);
                }
            }
        }

        private void a(m mVar) {
            try {
                g.this.f18622l.execute(new c("OkHttp %s ACK Settings", new Object[]{g.this.f18618h}, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // i.g0.i.h.b
        public void a(boolean z, int i2, int i3) {
            if (!z) {
                try {
                    g.this.f18622l.execute(new i(true, i2, i3));
                } catch (RejectedExecutionException unused) {
                }
            } else {
                synchronized (g.this) {
                    g.this.o = false;
                    g.this.notifyAll();
                }
            }
        }

        @Override // i.g0.i.h.b
        public void a(int i2, i.g0.i.b bVar, j.f fVar) {
            i.g0.i.i[] iVarArr;
            fVar.size();
            synchronized (g.this) {
                iVarArr = (i.g0.i.i[]) g.this.f18617g.values().toArray(new i.g0.i.i[g.this.f18617g.size()]);
                g.this.f18621k = true;
            }
            for (i.g0.i.i iVar : iVarArr) {
                if (iVar.c() > i2 && iVar.f()) {
                    iVar.c(i.g0.i.b.REFUSED_STREAM);
                    g.this.e(iVar.c());
                }
            }
        }

        @Override // i.g0.i.h.b
        public void a(int i2, long j2) {
            if (i2 == 0) {
                synchronized (g.this) {
                    g.this.q += j2;
                    g.this.notifyAll();
                }
                return;
            }
            i.g0.i.i c2 = g.this.c(i2);
            if (c2 != null) {
                synchronized (c2) {
                    c2.a(j2);
                }
            }
        }

        @Override // i.g0.i.h.b
        public void a(int i2, int i3, List<i.g0.i.c> list) {
            g.this.a(i3, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, long j2) {
        try {
            this.f18622l.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f18618h, Integer.valueOf(i2)}, i2, j2));
        } catch (RejectedExecutionException unused) {
        }
    }

    void a(boolean z, int i2, int i3) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.o;
                this.o = true;
            }
            if (z2) {
                m();
                return;
            }
        }
        try {
            this.v.a(z, i2, i3);
        } catch (IOException unused) {
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2, i.g0.i.b bVar) {
        this.v.a(i2, bVar);
    }

    public void a(i.g0.i.b bVar) {
        synchronized (this.v) {
            synchronized (this) {
                if (this.f18621k) {
                    return;
                }
                this.f18621k = true;
                this.v.a(this.f18619i, bVar, i.g0.c.f18448a);
            }
        }
    }

    void a(i.g0.i.b bVar, i.g0.i.b bVar2) {
        i.g0.i.i[] iVarArr = null;
        try {
            a(bVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            if (!this.f18617g.isEmpty()) {
                iVarArr = (i.g0.i.i[]) this.f18617g.values().toArray(new i.g0.i.i[this.f18617g.size()]);
                this.f18617g.clear();
            }
        }
        if (iVarArr != null) {
            for (i.g0.i.i iVar : iVarArr) {
                try {
                    iVar.a(bVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        try {
            this.v.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.u.close();
        } catch (IOException e5) {
            e = e5;
        }
        this.f18622l.shutdown();
        this.m.shutdown();
        if (e != null) {
            throw e;
        }
    }

    void a(boolean z) {
        if (z) {
            this.v.i();
            this.v.b(this.r);
            if (this.r.c() != 65535) {
                this.v.a(0, r6 - 65535);
            }
        }
        new Thread(this.w).start();
    }

    void a(int i2, List<i.g0.i.c> list) {
        synchronized (this) {
            if (this.x.contains(Integer.valueOf(i2))) {
                c(i2, i.g0.i.b.PROTOCOL_ERROR);
                return;
            }
            this.x.add(Integer.valueOf(i2));
            try {
                a(new c("OkHttp %s Push Request[%s]", new Object[]{this.f18618h, Integer.valueOf(i2)}, i2, list));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    void a(int i2, List<i.g0.i.c> list, boolean z) {
        try {
            a(new d("OkHttp %s Push Headers[%s]", new Object[]{this.f18618h, Integer.valueOf(i2)}, i2, list, z));
        } catch (RejectedExecutionException unused) {
        }
    }

    void a(int i2, j.e eVar, int i3, boolean z) {
        j.c cVar = new j.c();
        long j2 = i3;
        eVar.f(j2);
        eVar.b(cVar, j2);
        if (cVar.z() == j2) {
            a(new e("OkHttp %s Push Data[%s]", new Object[]{this.f18618h, Integer.valueOf(i2)}, i2, cVar, i3, z));
            return;
        }
        throw new IOException(cVar.z() + " != " + i3);
    }

    void a(int i2, i.g0.i.b bVar) {
        a(new f("OkHttp %s Push Reset[%s]", new Object[]{this.f18618h, Integer.valueOf(i2)}, i2, bVar));
    }

    private synchronized void a(i.g0.b bVar) {
        if (!i()) {
            this.m.execute(bVar);
        }
    }
}
