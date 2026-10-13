package e.f.i.c;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* compiled from: BufferedDiskCache.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: h, reason: collision with root package name */
    private static final Class<?> f17528h = e.class;

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.cache.disk.h f17529a;

    /* renamed from: b, reason: collision with root package name */
    private final e.f.c.f.h f17530b;

    /* renamed from: c, reason: collision with root package name */
    private final e.f.c.f.k f17531c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f17532d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f17533e;

    /* renamed from: f, reason: collision with root package name */
    private final u f17534f = u.a();

    /* renamed from: g, reason: collision with root package name */
    private final n f17535g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class a implements Callable<e.f.i.g.e> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f17536e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ e.f.b.a.d f17537f;

        a(AtomicBoolean atomicBoolean, e.f.b.a.d dVar) {
            this.f17536e = atomicBoolean;
            this.f17537f = dVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        @Nullable
        public e.f.i.g.e call() {
            try {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a("BufferedDiskCache#getAsync");
                }
                if (!this.f17536e.get()) {
                    e.f.i.g.e a2 = e.this.f17534f.a(this.f17537f);
                    if (a2 != null) {
                        e.f.c.d.a.b((Class<?>) e.f17528h, "Found image for %s in staging area", this.f17537f.a());
                        e.this.f17535g.d(this.f17537f);
                    } else {
                        e.f.c.d.a.b((Class<?>) e.f17528h, "Did not find image for %s in staging area", this.f17537f.a());
                        e.this.f17535g.e();
                        try {
                            e.f.c.g.a a3 = e.f.c.g.a.a(e.this.b(this.f17537f));
                            try {
                                a2 = new e.f.i.g.e((e.f.c.g.a<e.f.c.f.g>) a3);
                            } finally {
                                e.f.c.g.a.b(a3);
                            }
                        } catch (Exception unused) {
                            if (e.f.i.j.b.c()) {
                                e.f.i.j.b.a();
                            }
                            return null;
                        }
                    }
                    if (!Thread.interrupted()) {
                        return a2;
                    }
                    e.f.c.d.a.b((Class<?>) e.f17528h, "Host thread was interrupted, decreasing reference count");
                    if (a2 != null) {
                        a2.close();
                    }
                    throw new InterruptedException();
                }
                throw new CancellationException();
            } finally {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        }
    }

    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e.f.b.a.d f17539e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ e.f.i.g.e f17540f;

        b(e.f.b.a.d dVar, e.f.i.g.e eVar) {
            this.f17539e = dVar;
            this.f17540f = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a("BufferedDiskCache#putAsync");
                }
                e.this.c(this.f17539e, this.f17540f);
            } finally {
                e.this.f17534f.b(this.f17539e, this.f17540f);
                e.f.i.g.e.c(this.f17540f);
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        }
    }

    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    class c implements Callable<Void> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e.f.b.a.d f17542e;

        c(e.f.b.a.d dVar) {
            this.f17542e = dVar;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            try {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a("BufferedDiskCache#remove");
                }
                e.this.f17534f.b(this.f17542e);
                e.this.f17529a.b(this.f17542e);
            } finally {
                if (e.f.i.j.b.c()) {
                    e.f.i.j.b.a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BufferedDiskCache.java */
    /* loaded from: classes.dex */
    public class d implements e.f.b.a.j {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.f.i.g.e f17544a;

        d(e.f.i.g.e eVar) {
            this.f17544a = eVar;
        }

        @Override // e.f.b.a.j
        public void a(OutputStream outputStream) {
            e.this.f17531c.a(this.f17544a.q(), outputStream);
        }
    }

    public e(com.facebook.cache.disk.h hVar, e.f.c.f.h hVar2, e.f.c.f.k kVar, Executor executor, Executor executor2, n nVar) {
        this.f17529a = hVar;
        this.f17530b = hVar2;
        this.f17531c = kVar;
        this.f17532d = executor;
        this.f17533e = executor2;
        this.f17535g = nVar;
    }

    private c.f<e.f.i.g.e> b(e.f.b.a.d dVar, AtomicBoolean atomicBoolean) {
        try {
            return c.f.a(new a(atomicBoolean, dVar), this.f17532d);
        } catch (Exception e2) {
            e.f.c.d.a.b(f17528h, e2, "Failed to schedule disk-cache read for %s", dVar.a());
            return c.f.b(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(e.f.b.a.d dVar, e.f.i.g.e eVar) {
        e.f.c.d.a.b(f17528h, "About to write to disk-cache for key %s", dVar.a());
        try {
            this.f17529a.a(dVar, new d(eVar));
            e.f.c.d.a.b(f17528h, "Successful disk-cache write for key %s", dVar.a());
        } catch (IOException e2) {
            e.f.c.d.a.b(f17528h, e2, "Failed to write to disk-cache for key %s", dVar.a());
        }
    }

    public c.f<e.f.i.g.e> a(e.f.b.a.d dVar, AtomicBoolean atomicBoolean) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("BufferedDiskCache#get");
            }
            e.f.i.g.e a2 = this.f17534f.a(dVar);
            if (a2 != null) {
                return b(dVar, a2);
            }
            c.f<e.f.i.g.e> b2 = b(dVar, atomicBoolean);
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
            return b2;
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    private c.f<e.f.i.g.e> b(e.f.b.a.d dVar, e.f.i.g.e eVar) {
        e.f.c.d.a.b(f17528h, "Found image for %s in staging area", dVar.a());
        this.f17535g.d(dVar);
        return c.f.b(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public e.f.c.f.g b(e.f.b.a.d dVar) {
        try {
            e.f.c.d.a.b(f17528h, "Disk cache read for %s", dVar.a());
            e.f.a.a a2 = this.f17529a.a(dVar);
            if (a2 == null) {
                e.f.c.d.a.b(f17528h, "Disk cache miss for %s", dVar.a());
                this.f17535g.c();
                return null;
            }
            e.f.c.d.a.b(f17528h, "Found entry in disk cache for %s", dVar.a());
            this.f17535g.b(dVar);
            InputStream a3 = a2.a();
            try {
                e.f.c.f.g a4 = this.f17530b.a(a3, (int) a2.size());
                a3.close();
                e.f.c.d.a.b(f17528h, "Successful read from disk cache for %s", dVar.a());
                return a4;
            } catch (Throwable th) {
                a3.close();
                throw th;
            }
        } catch (IOException e2) {
            e.f.c.d.a.b(f17528h, e2, "Exception reading from cache for %s", dVar.a());
            this.f17535g.b();
            throw e2;
        }
    }

    public void a(e.f.b.a.d dVar, e.f.i.g.e eVar) {
        try {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a("BufferedDiskCache#put");
            }
            com.facebook.common.internal.h.a(dVar);
            com.facebook.common.internal.h.a(e.f.i.g.e.e(eVar));
            this.f17534f.a(dVar, eVar);
            e.f.i.g.e b2 = e.f.i.g.e.b(eVar);
            try {
                this.f17533e.execute(new b(dVar, b2));
            } catch (Exception e2) {
                e.f.c.d.a.b(f17528h, e2, "Failed to schedule disk-cache write for %s", dVar.a());
                this.f17534f.b(dVar, eVar);
                e.f.i.g.e.c(b2);
            }
        } finally {
            if (e.f.i.j.b.c()) {
                e.f.i.j.b.a();
            }
        }
    }

    public c.f<Void> a(e.f.b.a.d dVar) {
        com.facebook.common.internal.h.a(dVar);
        this.f17534f.b(dVar);
        try {
            return c.f.a(new c(dVar), this.f17533e);
        } catch (Exception e2) {
            e.f.c.d.a.b(f17528h, e2, "Failed to schedule disk-cache remove for %s", dVar.a());
            return c.f.b(e2);
        }
    }
}
