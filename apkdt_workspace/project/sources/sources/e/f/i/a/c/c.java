package e.f.i.a.c;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.g;
import e.f.i.c.h;
import java.util.Iterator;
import java.util.LinkedHashSet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: AnimatedFrameCache.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private final e.f.b.a.d f17499a;

    /* renamed from: b, reason: collision with root package name */
    private final h<e.f.b.a.d, e.f.i.g.c> f17500b;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private final LinkedHashSet<e.f.b.a.d> f17502d = new LinkedHashSet<>();

    /* renamed from: c, reason: collision with root package name */
    private final h.e<e.f.b.a.d> f17501c = new a();

    /* compiled from: AnimatedFrameCache.java */
    /* loaded from: classes.dex */
    class a implements h.e<e.f.b.a.d> {
        a() {
        }

        @Override // e.f.i.c.h.e
        public void a(e.f.b.a.d dVar, boolean z) {
            c.this.a(dVar, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedFrameCache.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b implements e.f.b.a.d {

        /* renamed from: a, reason: collision with root package name */
        private final e.f.b.a.d f17504a;

        /* renamed from: b, reason: collision with root package name */
        private final int f17505b;

        public b(e.f.b.a.d dVar, int i2) {
            this.f17504a = dVar;
            this.f17505b = i2;
        }

        @Override // e.f.b.a.d
        @Nullable
        public String a() {
            return null;
        }

        @Override // e.f.b.a.d
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f17505b == bVar.f17505b && this.f17504a.equals(bVar.f17504a);
        }

        @Override // e.f.b.a.d
        public int hashCode() {
            return (this.f17504a.hashCode() * 1013) + this.f17505b;
        }

        public String toString() {
            g.b a2 = g.a(this);
            a2.a("imageCacheKey", this.f17504a);
            a2.a("frameIndex", this.f17505b);
            return a2.toString();
        }
    }

    public c(e.f.b.a.d dVar, h<e.f.b.a.d, e.f.i.g.c> hVar) {
        this.f17499a = dVar;
        this.f17500b = hVar;
    }

    private b c(int i2) {
        return new b(this.f17499a, i2);
    }

    public synchronized void a(e.f.b.a.d dVar, boolean z) {
        if (z) {
            this.f17502d.add(dVar);
        } else {
            this.f17502d.remove(dVar);
        }
    }

    @Nullable
    public e.f.c.g.a<e.f.i.g.c> b(int i2) {
        return this.f17500b.get(c(i2));
    }

    @Nullable
    private synchronized e.f.b.a.d b() {
        e.f.b.a.d dVar;
        dVar = null;
        Iterator<e.f.b.a.d> it = this.f17502d.iterator();
        if (it.hasNext()) {
            dVar = it.next();
            it.remove();
        }
        return dVar;
    }

    @Nullable
    public e.f.c.g.a<e.f.i.g.c> a(int i2, e.f.c.g.a<e.f.i.g.c> aVar) {
        return this.f17500b.a(c(i2), aVar, this.f17501c);
    }

    public boolean a(int i2) {
        return this.f17500b.b((h<e.f.b.a.d, e.f.i.g.c>) c(i2));
    }

    @Nullable
    public e.f.c.g.a<e.f.i.g.c> a() {
        e.f.c.g.a<e.f.i.g.c> c2;
        do {
            e.f.b.a.d b2 = b();
            if (b2 == null) {
                return null;
            }
            c2 = this.f17500b.c((h<e.f.b.a.d, e.f.i.g.c>) b2);
        } while (c2 == null);
        return c2;
    }
}
