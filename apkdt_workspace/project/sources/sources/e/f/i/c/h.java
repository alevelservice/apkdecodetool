package e.f.i.c;

import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: CountingMemoryCache.java */
@ThreadSafe
/* loaded from: classes.dex */
public class h<K, V> implements p<K, V>, e.f.c.f.b {

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    static final long f17549g = TimeUnit.MINUTES.toMillis(5);

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    final g<K, d<K, V>> f17550a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    final g<K, d<K, V>> f17551b;

    /* renamed from: c, reason: collision with root package name */
    private final v<V> f17552c;

    /* renamed from: d, reason: collision with root package name */
    private final com.facebook.common.internal.j<q> f17553d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    protected q f17554e;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private long f17555f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes.dex */
    public class a implements v<d<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f17556a;

        a(h hVar, v vVar) {
            this.f17556a = vVar;
        }

        @Override // e.f.i.c.v
        public int a(d<K, V> dVar) {
            return this.f17556a.a(dVar.f17560b.A());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes.dex */
    public class b implements e.f.c.g.c<V> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ d f17557a;

        b(d dVar) {
            this.f17557a = dVar;
        }

        @Override // e.f.c.g.c
        public void a(V v) {
            h.this.i(this.f17557a);
        }
    }

    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes.dex */
    public interface c {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountingMemoryCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class d<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final K f17559a;

        /* renamed from: b, reason: collision with root package name */
        public final e.f.c.g.a<V> f17560b;

        /* renamed from: c, reason: collision with root package name */
        public int f17561c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f17562d;

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        public final e<K> f17563e;

        private d(K k2, e.f.c.g.a<V> aVar, @Nullable e<K> eVar) {
            com.facebook.common.internal.h.a(k2);
            this.f17559a = k2;
            e.f.c.g.a<V> a2 = e.f.c.g.a.a((e.f.c.g.a) aVar);
            com.facebook.common.internal.h.a(a2);
            this.f17560b = a2;
            this.f17561c = 0;
            this.f17562d = false;
            this.f17563e = eVar;
        }

        @VisibleForTesting
        static <K, V> d<K, V> a(K k2, e.f.c.g.a<V> aVar, @Nullable e<K> eVar) {
            return new d<>(k2, aVar, eVar);
        }
    }

    /* compiled from: CountingMemoryCache.java */
    /* loaded from: classes.dex */
    public interface e<K> {
        void a(K k2, boolean z);
    }

    public h(v<V> vVar, c cVar, com.facebook.common.internal.j<q> jVar) {
        new WeakHashMap();
        this.f17552c = vVar;
        this.f17550a = new g<>(a(vVar));
        this.f17551b = new g<>(a(vVar));
        this.f17553d = jVar;
        this.f17554e = this.f17553d.get();
        this.f17555f = SystemClock.uptimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        if (b() <= (r3.f17554e.f17569a - r4)) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean d(V r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            e.f.i.c.v<V> r0 = r3.f17552c     // Catch: java.lang.Throwable -> L28
            int r4 = r0.a(r4)     // Catch: java.lang.Throwable -> L28
            e.f.i.c.q r0 = r3.f17554e     // Catch: java.lang.Throwable -> L28
            int r0 = r0.f17573e     // Catch: java.lang.Throwable -> L28
            r1 = 1
            if (r4 > r0) goto L25
            int r0 = r3.a()     // Catch: java.lang.Throwable -> L28
            e.f.i.c.q r2 = r3.f17554e     // Catch: java.lang.Throwable -> L28
            int r2 = r2.f17570b     // Catch: java.lang.Throwable -> L28
            int r2 = r2 - r1
            if (r0 > r2) goto L25
            int r0 = r3.b()     // Catch: java.lang.Throwable -> L28
            e.f.i.c.q r2 = r3.f17554e     // Catch: java.lang.Throwable -> L28
            int r2 = r2.f17569a     // Catch: java.lang.Throwable -> L28
            int r2 = r2 - r4
            if (r0 > r2) goto L25
            goto L26
        L25:
            r1 = 0
        L26:
            monitor-exit(r3)
            return r1
        L28:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: e.f.i.c.h.d(java.lang.Object):boolean");
    }

    private static <K, V> void e(@Nullable d<K, V> dVar) {
        e<K> eVar;
        if (dVar == null || (eVar = dVar.f17563e) == null) {
            return;
        }
        eVar.a(dVar.f17559a, true);
    }

    private static <K, V> void f(@Nullable d<K, V> dVar) {
        e<K> eVar;
        if (dVar == null || (eVar = dVar.f17563e) == null) {
            return;
        }
        eVar.a(dVar.f17559a, false);
    }

    private synchronized e.f.c.g.a<V> g(d<K, V> dVar) {
        b((d) dVar);
        return e.f.c.g.a.a(dVar.f17560b.A(), new b(dVar));
    }

    @Nullable
    private synchronized e.f.c.g.a<V> h(d<K, V> dVar) {
        com.facebook.common.internal.h.a(dVar);
        return (dVar.f17562d && dVar.f17561c == 0) ? dVar.f17560b : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(d<K, V> dVar) {
        boolean d2;
        e.f.c.g.a<V> h2;
        com.facebook.common.internal.h.a(dVar);
        synchronized (this) {
            a(dVar);
            d2 = d((d) dVar);
            h2 = h(dVar);
        }
        e.f.c.g.a.b(h2);
        if (!d2) {
            dVar = null;
        }
        e(dVar);
        d();
        c();
    }

    public synchronized boolean b(K k2) {
        return this.f17551b.a(k2);
    }

    @Nullable
    public e.f.c.g.a<V> c(K k2) {
        d<K, V> c2;
        boolean z;
        e.f.c.g.a<V> aVar;
        com.facebook.common.internal.h.a(k2);
        synchronized (this) {
            c2 = this.f17550a.c(k2);
            z = true;
            if (c2 != null) {
                d<K, V> c3 = this.f17551b.c(k2);
                com.facebook.common.internal.h.a(c3);
                com.facebook.common.internal.h.b(c3.f17561c == 0);
                aVar = c3.f17560b;
            } else {
                aVar = null;
                z = false;
            }
        }
        if (z) {
            f(c2);
        }
        return aVar;
    }

    @Override // e.f.i.c.p
    @Nullable
    public e.f.c.g.a<V> get(K k2) {
        d<K, V> c2;
        e.f.c.g.a<V> g2;
        com.facebook.common.internal.h.a(k2);
        synchronized (this) {
            c2 = this.f17550a.c(k2);
            d<K, V> b2 = this.f17551b.b(k2);
            g2 = b2 != null ? g(b2) : null;
        }
        f(c2);
        d();
        c();
        return g2;
    }

    private v<d<K, V>> a(v<V> vVar) {
        return new a(this, vVar);
    }

    private void b(@Nullable ArrayList<d<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<d<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                e.f.c.g.a.b(h(it.next()));
            }
        }
    }

    @Override // e.f.i.c.p
    public e.f.c.g.a<V> a(K k2, e.f.c.g.a<V> aVar) {
        return a(k2, aVar, null);
    }

    private synchronized void b(d<K, V> dVar) {
        com.facebook.common.internal.h.a(dVar);
        com.facebook.common.internal.h.b(!dVar.f17562d);
        dVar.f17561c++;
    }

    @Nullable
    public e.f.c.g.a<V> a(K k2, e.f.c.g.a<V> aVar, e<K> eVar) {
        d<K, V> c2;
        e.f.c.g.a<V> aVar2;
        e.f.c.g.a<V> aVar3;
        com.facebook.common.internal.h.a(k2);
        com.facebook.common.internal.h.a(aVar);
        d();
        synchronized (this) {
            c2 = this.f17550a.c(k2);
            d<K, V> c3 = this.f17551b.c(k2);
            aVar2 = null;
            if (c3 != null) {
                c((d) c3);
                aVar3 = h(c3);
            } else {
                aVar3 = null;
            }
            if (d((h<K, V>) aVar.A())) {
                d<K, V> a2 = d.a(k2, aVar, eVar);
                this.f17551b.a(k2, a2);
                aVar2 = g(a2);
            }
        }
        e.f.c.g.a.b(aVar3);
        f(c2);
        c();
        return aVar2;
    }

    private synchronized boolean d(d<K, V> dVar) {
        if (dVar.f17562d || dVar.f17561c != 0) {
            return false;
        }
        this.f17550a.a(dVar.f17559a, dVar);
        return true;
    }

    public synchronized int b() {
        return this.f17551b.c() - this.f17550a.c();
    }

    private synchronized void d() {
        if (this.f17555f + f17549g > SystemClock.uptimeMillis()) {
            return;
        }
        this.f17555f = SystemClock.uptimeMillis();
        this.f17554e = this.f17553d.get();
    }

    private void c() {
        ArrayList<d<K, V>> a2;
        synchronized (this) {
            a2 = a(Math.min(this.f17554e.f17572d, this.f17554e.f17570b - a()), Math.min(this.f17554e.f17571c, this.f17554e.f17569a - b()));
            a(a2);
        }
        b((ArrayList) a2);
        c((ArrayList) a2);
    }

    @Nullable
    private synchronized ArrayList<d<K, V>> a(int i2, int i3) {
        int max = Math.max(i2, 0);
        int max2 = Math.max(i3, 0);
        if (this.f17550a.a() <= max && this.f17550a.c() <= max2) {
            return null;
        }
        ArrayList<d<K, V>> arrayList = new ArrayList<>();
        while (true) {
            if (this.f17550a.a() <= max && this.f17550a.c() <= max2) {
                return arrayList;
            }
            K b2 = this.f17550a.b();
            this.f17550a.c(b2);
            arrayList.add(this.f17551b.c(b2));
        }
    }

    private void c(@Nullable ArrayList<d<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<d<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                f(it.next());
            }
        }
    }

    private synchronized void c(d<K, V> dVar) {
        com.facebook.common.internal.h.a(dVar);
        com.facebook.common.internal.h.b(!dVar.f17562d);
        dVar.f17562d = true;
    }

    private synchronized void a(@Nullable ArrayList<d<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator<d<K, V>> it = arrayList.iterator();
            while (it.hasNext()) {
                c((d) it.next());
            }
        }
    }

    private synchronized void a(d<K, V> dVar) {
        com.facebook.common.internal.h.a(dVar);
        com.facebook.common.internal.h.b(dVar.f17561c > 0);
        dVar.f17561c--;
    }

    public synchronized int a() {
        return this.f17551b.a() - this.f17550a.a();
    }
}
