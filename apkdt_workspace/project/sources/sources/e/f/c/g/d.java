package e.f.c.g;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import java.util.IdentityHashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: SharedReference.java */
@VisibleForTesting
/* loaded from: classes.dex */
public class d<T> {

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("itself")
    private static final Map<Object, Integer> f17172d = new IdentityHashMap();

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private T f17173a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private int f17174b;

    /* renamed from: c, reason: collision with root package name */
    private final c<T> f17175c;

    /* compiled from: SharedReference.java */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        public a() {
            super("Null shared reference");
        }
    }

    public d(T t, c<T> cVar) {
        h.a(t);
        this.f17173a = t;
        h.a(cVar);
        this.f17175c = cVar;
        this.f17174b = 1;
        a(t);
    }

    private static void a(Object obj) {
        synchronized (f17172d) {
            Integer num = f17172d.get(obj);
            if (num == null) {
                f17172d.put(obj, 1);
            } else {
                f17172d.put(obj, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    private static void b(Object obj) {
        synchronized (f17172d) {
            Integer num = f17172d.get(obj);
            if (num == null) {
                e.f.c.d.a.d("SharedReference", "No entry in sLiveObjects for value of type %s", obj.getClass());
            } else if (num.intValue() == 1) {
                f17172d.remove(obj);
            } else {
                f17172d.put(obj, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    private synchronized int e() {
        f();
        h.a(this.f17174b > 0);
        this.f17174b--;
        return this.f17174b;
    }

    private void f() {
        if (!a((d<?>) this)) {
            throw new a();
        }
    }

    public synchronized T c() {
        return this.f17173a;
    }

    public synchronized boolean d() {
        return this.f17174b > 0;
    }

    public static boolean a(d<?> dVar) {
        return dVar != null && dVar.d();
    }

    public synchronized void a() {
        f();
        this.f17174b++;
    }

    public void b() {
        T t;
        if (e() == 0) {
            synchronized (this) {
                t = this.f17173a;
                this.f17173a = null;
            }
            this.f17175c.a(t);
            b(t);
        }
    }
}
