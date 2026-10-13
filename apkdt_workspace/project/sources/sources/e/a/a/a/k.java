package e.a.a.a;

import android.os.SystemClock;
import e.a.a.a.a.e;
import e.a.a.a.i.a;
import e.a.a.a.i.c;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: TBus.java */
/* loaded from: classes.dex */
public class k implements e.a.a.a.i.b {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicLong f16824a = new AtomicLong();

    /* renamed from: b, reason: collision with root package name */
    private final j f16825b = new j();

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f16826c;

    /* renamed from: d, reason: collision with root package name */
    private final e.a.a.a.a.d f16827d;

    /* renamed from: e, reason: collision with root package name */
    private final ConcurrentHashMap<String, Set<h>> f16828e;

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<Object, Map<String, Collection<h>>> f16829f;

    /* renamed from: g, reason: collision with root package name */
    private c f16830g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f16831h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f16832i;

    /* renamed from: j, reason: collision with root package name */
    private boolean f16833j;

    /* renamed from: k, reason: collision with root package name */
    private final ThreadLocal<d> f16834k;

    public k() {
        new ConcurrentHashMap();
        this.f16826c = Executors.newCachedThreadPool();
        this.f16827d = new e(new e.a.a.a.a.c(new e.a.a.a.a.b(new e.a.a.a.a.f(null, this, this.f16826c))));
        this.f16828e = new ConcurrentHashMap<>();
        this.f16829f = new ConcurrentHashMap<>();
        this.f16830g = new a();
        this.f16831h = true;
        this.f16832i = true;
        this.f16833j = true;
        this.f16834k = new l(this);
    }

    public boolean a() {
        return this.f16833j;
    }

    public void b(Object obj) {
        Set<h> set;
        Map<String, Collection<h>> remove = this.f16829f.remove(obj);
        if (remove == null) {
            return;
        }
        for (Map.Entry<String, Collection<h>> entry : remove.entrySet()) {
            String key = entry.getKey();
            Collection<h> value = entry.getValue();
            if (value != null && (set = this.f16828e.get(key)) != null) {
                set.removeAll(value);
                if (set.isEmpty()) {
                    this.f16828e.remove(key);
                }
            }
        }
    }

    public void c(Object obj) {
        a(obj, b.BROADCAST);
    }

    public void a(Object obj) {
        if (this.f16829f.contains(obj)) {
            return;
        }
        Map<String, Collection<h>> a2 = this.f16830g.a(obj, this);
        if (this.f16829f.putIfAbsent(obj, a2) != null) {
            return;
        }
        for (Map.Entry<String, Collection<h>> entry : a2.entrySet()) {
            String key = entry.getKey();
            Collection<h> value = entry.getValue();
            Set<h> set = this.f16828e.get(key);
            if (set == null) {
                e.a.a.b.a.c cVar = new e.a.a.b.a.c(this.f16825b);
                cVar.addAll(value);
                Set<h> putIfAbsent = this.f16828e.putIfAbsent(key, cVar);
                if (putIfAbsent != null) {
                    putIfAbsent.addAll(value);
                }
            } else {
                set.addAll(value);
            }
        }
    }

    private boolean b(e.a.a.a.c.a aVar, b bVar) {
        Set<h> set = this.f16828e.get(aVar.a());
        boolean z = false;
        if (set != null) {
            for (h hVar : set) {
                if (hVar.f() != 1) {
                    String b2 = aVar.b();
                    if (e.a.a.b.b.a.a.b(b2)) {
                        String a2 = hVar.a();
                        if (!e.a.a.b.b.a.a.a(a2) && b2.equals(a2)) {
                        }
                    }
                    f a3 = this.f16827d.a(aVar, hVar);
                    if (a3 == f.SUCCESS) {
                        z = true;
                    }
                    if (bVar == b.FIRST_ONE && a3 != f.ABORT) {
                        break;
                    }
                }
            }
        }
        if (!z && this.f16832i && !e.a.a.a.c.d.b(aVar) && !e.a.a.a.c.b.b(aVar)) {
            a((e.a.a.a.c.a) new e.a.a.a.c.d(aVar));
        }
        return z;
    }

    public void a(Object obj, b bVar) {
        a(obj, null, bVar);
    }

    public void a(Object obj, String str, b bVar) {
        Class<?> cls = obj.getClass();
        e.a.a.a.c.a aVar = new e.a.a.a.c.a();
        aVar.a(cls.getName());
        aVar.b(str);
        aVar.a(obj);
        a(aVar, bVar);
    }

    private long b() {
        return this.f16824a.incrementAndGet();
    }

    public void a(e.a.a.a.c.a aVar) {
        a(aVar, b.BROADCAST);
    }

    public void a(e.a.a.a.c.a aVar, b bVar) {
        e.a.a.b.b.b.a(aVar);
        if (this.f16831h) {
            aVar.a(SystemClock.elapsedRealtime());
            d dVar = this.f16834k.get();
            dVar.a(aVar);
            while (!dVar.b()) {
                e.a.a.a.c.a a2 = dVar.a();
                if (a2 != null) {
                    b(a2, bVar);
                }
            }
        }
    }

    @Override // e.a.a.a.i.b
    public h a(h hVar) {
        hVar.a(b());
        return hVar;
    }
}
