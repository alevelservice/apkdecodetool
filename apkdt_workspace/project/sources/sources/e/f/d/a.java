package e.f.d;

import android.util.Pair;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: AbstractDataSource.java */
/* loaded from: classes.dex */
public abstract class a<T> implements e.f.d.c<T> {

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private T f17204c = null;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private Throwable f17205d = null;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private float f17206e = 0.0f;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f17203b = false;

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private c f17202a = c.IN_PROGRESS;

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentLinkedQueue<Pair<e<T>, Executor>> f17207f = new ConcurrentLinkedQueue<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDataSource.java */
    /* renamed from: e.f.d.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0186a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f17208e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ e f17209f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ boolean f17210g;

        RunnableC0186a(boolean z, e eVar, boolean z2) {
            this.f17208e = z;
            this.f17209f = eVar;
            this.f17210g = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f17208e) {
                this.f17209f.b(a.this);
            } else if (this.f17210g) {
                this.f17209f.a(a.this);
            } else {
                this.f17209f.c(a.this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDataSource.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ e f17212e;

        b(e eVar) {
            this.f17212e = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17212e.d(a.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractDataSource.java */
    /* loaded from: classes.dex */
    public enum c {
        IN_PROGRESS,
        SUCCESS,
        FAILURE
    }

    private void i() {
        boolean f2 = f();
        boolean j2 = j();
        Iterator<Pair<e<T>, Executor>> it = this.f17207f.iterator();
        while (it.hasNext()) {
            Pair<e<T>, Executor> next = it.next();
            a((e) next.first, (Executor) next.second, f2, j2);
        }
    }

    private synchronized boolean j() {
        boolean z;
        if (g()) {
            z = b() ? false : true;
        }
        return z;
    }

    protected void a(@Nullable T t) {
    }

    @Override // e.f.d.c
    public synchronized boolean a() {
        return this.f17204c != null;
    }

    @Override // e.f.d.c
    public synchronized boolean b() {
        return this.f17202a != c.IN_PROGRESS;
    }

    @Override // e.f.d.c
    @Nullable
    public synchronized Throwable c() {
        return this.f17205d;
    }

    @Override // e.f.d.c
    public boolean close() {
        synchronized (this) {
            if (this.f17203b) {
                return false;
            }
            this.f17203b = true;
            T t = this.f17204c;
            this.f17204c = null;
            if (t != null) {
                a((a<T>) t);
            }
            if (!b()) {
                i();
            }
            synchronized (this) {
                this.f17207f.clear();
            }
            return true;
        }
    }

    @Override // e.f.d.c
    public boolean d() {
        return false;
    }

    @Override // e.f.d.c
    @Nullable
    public synchronized T e() {
        return this.f17204c;
    }

    public synchronized boolean f() {
        return this.f17202a == c.FAILURE;
    }

    public synchronized boolean g() {
        return this.f17203b;
    }

    @Override // e.f.d.c
    public synchronized float getProgress() {
        return this.f17206e;
    }

    protected void h() {
        Iterator<Pair<e<T>, Executor>> it = this.f17207f.iterator();
        while (it.hasNext()) {
            Pair<e<T>, Executor> next = it.next();
            ((Executor) next.second).execute(new b((e) next.first));
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:31:0x0039
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    private boolean b(@javax.annotation.Nullable T r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            monitor-enter(r3)     // Catch: java.lang.Throwable -> L3c
            boolean r1 = r3.f17203b     // Catch: java.lang.Throwable -> L39
            if (r1 != 0) goto L2d
            e.f.d.a$c r1 = r3.f17202a     // Catch: java.lang.Throwable -> L39
            e.f.d.a$c r2 = e.f.d.a.c.IN_PROGRESS     // Catch: java.lang.Throwable -> L39
            if (r1 == r2) goto Ld
            goto L2d
        Ld:
            if (r5 == 0) goto L17
            e.f.d.a$c r5 = e.f.d.a.c.SUCCESS     // Catch: java.lang.Throwable -> L39
            r3.f17202a = r5     // Catch: java.lang.Throwable -> L39
            r5 = 1065353216(0x3f800000, float:1.0)
            r3.f17206e = r5     // Catch: java.lang.Throwable -> L39
        L17:
            T r5 = r3.f17204c     // Catch: java.lang.Throwable -> L39
            if (r5 == r4) goto L24
            T r5 = r3.f17204c     // Catch: java.lang.Throwable -> L39
            r3.f17204c = r4     // Catch: java.lang.Throwable -> L21
            r4 = r5
            goto L25
        L21:
            r4 = move-exception
            r0 = r5
            goto L3a
        L24:
            r4 = r0
        L25:
            r5 = 1
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L35
            if (r4 == 0) goto L2c
            r3.a(r4)
        L2c:
            return r5
        L2d:
            r5 = 0
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L35
            if (r4 == 0) goto L34
            r3.a(r4)
        L34:
            return r5
        L35:
            r5 = move-exception
            r0 = r4
            r4 = r5
            goto L3a
        L39:
            r4 = move-exception
        L3a:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L39
            throw r4     // Catch: java.lang.Throwable -> L3c
        L3c:
            r4 = move-exception
            if (r0 == 0) goto L42
            r3.a(r0)
        L42:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: e.f.d.a.b(java.lang.Object, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    @Override // e.f.d.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(e.f.d.e<T> r3, java.util.concurrent.Executor r4) {
        /*
            r2 = this;
            com.facebook.common.internal.h.a(r3)
            com.facebook.common.internal.h.a(r4)
            monitor-enter(r2)
            boolean r0 = r2.f17203b     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto Ld
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            return
        Ld:
            e.f.d.a$c r0 = r2.f17202a     // Catch: java.lang.Throwable -> L41
            e.f.d.a$c r1 = e.f.d.a.c.IN_PROGRESS     // Catch: java.lang.Throwable -> L41
            if (r0 != r1) goto L1c
            java.util.concurrent.ConcurrentLinkedQueue<android.util.Pair<e.f.d.e<T>, java.util.concurrent.Executor>> r0 = r2.f17207f     // Catch: java.lang.Throwable -> L41
            android.util.Pair r1 = android.util.Pair.create(r3, r4)     // Catch: java.lang.Throwable -> L41
            r0.add(r1)     // Catch: java.lang.Throwable -> L41
        L1c:
            boolean r0 = r2.a()     // Catch: java.lang.Throwable -> L41
            if (r0 != 0) goto L31
            boolean r0 = r2.b()     // Catch: java.lang.Throwable -> L41
            if (r0 != 0) goto L31
            boolean r0 = r2.j()     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L2f
            goto L31
        L2f:
            r0 = 0
            goto L32
        L31:
            r0 = 1
        L32:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            if (r0 == 0) goto L40
            boolean r0 = r2.f()
            boolean r1 = r2.j()
            r2.a(r3, r4, r0, r1)
        L40:
            return
        L41:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L41
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: e.f.d.a.a(e.f.d.e, java.util.concurrent.Executor):void");
    }

    private void a(e<T> eVar, Executor executor, boolean z, boolean z2) {
        executor.execute(new RunnableC0186a(z, eVar, z2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(@Nullable T t, boolean z) {
        boolean b2 = b(t, z);
        if (b2) {
            i();
        }
        return b2;
    }

    private synchronized boolean b(Throwable th) {
        if (!this.f17203b && this.f17202a == c.IN_PROGRESS) {
            this.f17202a = c.FAILURE;
            this.f17205d = th;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Throwable th) {
        boolean b2 = b(th);
        if (b2) {
            i();
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(float f2) {
        boolean b2 = b(f2);
        if (b2) {
            h();
        }
        return b2;
    }

    private synchronized boolean b(float f2) {
        if (!this.f17203b && this.f17202a == c.IN_PROGRESS) {
            if (f2 < this.f17206e) {
                return false;
            }
            this.f17206e = f2;
            return true;
        }
        return false;
    }
}
