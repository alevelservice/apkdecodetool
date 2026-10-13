package e.f.i.c;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: StagingArea.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: b, reason: collision with root package name */
    private static final Class<?> f17575b = u.class;

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private Map<e.f.b.a.d, e.f.i.g.e> f17576a = new HashMap();

    private u() {
    }

    public static u a() {
        return new u();
    }

    public boolean b(e.f.b.a.d dVar) {
        e.f.i.g.e remove;
        com.facebook.common.internal.h.a(dVar);
        synchronized (this) {
            remove = this.f17576a.remove(dVar);
        }
        if (remove == null) {
            return false;
        }
        try {
            return remove.v();
        } finally {
            remove.close();
        }
    }

    public synchronized void a(e.f.b.a.d dVar, e.f.i.g.e eVar) {
        com.facebook.common.internal.h.a(dVar);
        com.facebook.common.internal.h.a(e.f.i.g.e.e(eVar));
        e.f.i.g.e.c(this.f17576a.put(dVar, e.f.i.g.e.b(eVar)));
        b();
    }

    @Nullable
    public synchronized e.f.i.g.e a(e.f.b.a.d dVar) {
        e.f.i.g.e eVar;
        com.facebook.common.internal.h.a(dVar);
        e.f.i.g.e eVar2 = this.f17576a.get(dVar);
        if (eVar2 != null) {
            synchronized (eVar2) {
                if (!e.f.i.g.e.e(eVar2)) {
                    this.f17576a.remove(dVar);
                    e.f.c.d.a.c(f17575b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVar2)), dVar.a(), Integer.valueOf(System.identityHashCode(dVar)));
                    return null;
                }
                eVar = e.f.i.g.e.b(eVar2);
            }
        } else {
            eVar = eVar2;
        }
        return eVar;
    }

    public synchronized boolean b(e.f.b.a.d dVar, e.f.i.g.e eVar) {
        com.facebook.common.internal.h.a(dVar);
        com.facebook.common.internal.h.a(eVar);
        com.facebook.common.internal.h.a(e.f.i.g.e.e(eVar));
        e.f.i.g.e eVar2 = this.f17576a.get(dVar);
        if (eVar2 == null) {
            return false;
        }
        e.f.c.g.a<e.f.c.f.g> j2 = eVar2.j();
        e.f.c.g.a<e.f.c.f.g> j3 = eVar.j();
        if (j2 != null && j3 != null) {
            try {
                if (j2.A() == j3.A()) {
                    this.f17576a.remove(dVar);
                    e.f.c.g.a.b(j3);
                    e.f.c.g.a.b(j2);
                    e.f.i.g.e.c(eVar2);
                    b();
                    return true;
                }
            } finally {
                e.f.c.g.a.b(j3);
                e.f.c.g.a.b(j2);
                e.f.i.g.e.c(eVar2);
            }
        }
        return false;
    }

    private synchronized void b() {
        e.f.c.d.a.b(f17575b, "Count = %d", Integer.valueOf(this.f17576a.size()));
    }
}
