package e.f.d;

import com.facebook.common.internal.g;
import com.facebook.common.internal.j;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: FirstAvailableDataSourceSupplier.java */
@ThreadSafe
/* loaded from: classes.dex */
public class f<T> implements j<c<T>> {

    /* renamed from: a, reason: collision with root package name */
    private final List<j<c<T>>> f17216a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FirstAvailableDataSourceSupplier.java */
    @ThreadSafe
    /* loaded from: classes.dex */
    public class b extends e.f.d.a<T> {

        /* renamed from: g, reason: collision with root package name */
        private int f17217g = 0;

        /* renamed from: h, reason: collision with root package name */
        private c<T> f17218h = null;

        /* renamed from: i, reason: collision with root package name */
        private c<T> f17219i = null;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FirstAvailableDataSourceSupplier.java */
        /* loaded from: classes.dex */
        public class a implements e<T> {
            private a() {
            }

            @Override // e.f.d.e
            public void a(c<T> cVar) {
            }

            @Override // e.f.d.e
            public void b(c<T> cVar) {
                b.this.c(cVar);
            }

            @Override // e.f.d.e
            public void c(c<T> cVar) {
                if (cVar.a()) {
                    b.this.d(cVar);
                } else if (cVar.b()) {
                    b.this.c(cVar);
                }
            }

            @Override // e.f.d.e
            public void d(c<T> cVar) {
                b.this.a(Math.max(b.this.getProgress(), cVar.getProgress()));
            }
        }

        public b() {
            if (k()) {
                return;
            }
            a((Throwable) new RuntimeException("No data source supplier or supplier returned null."));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(c<T> cVar) {
            if (a((c) cVar)) {
                if (cVar != i()) {
                    b(cVar);
                }
                if (k()) {
                    return;
                }
                a(cVar.c());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(c<T> cVar) {
            a((c) cVar, cVar.b());
            if (cVar == i()) {
                a((b) null, cVar.b());
            }
        }

        @Nullable
        private synchronized c<T> i() {
            return this.f17219i;
        }

        @Nullable
        private synchronized j<c<T>> j() {
            if (g() || this.f17217g >= f.this.f17216a.size()) {
                return null;
            }
            List list = f.this.f17216a;
            int i2 = this.f17217g;
            this.f17217g = i2 + 1;
            return (j) list.get(i2);
        }

        private boolean k() {
            j<c<T>> j2 = j();
            c<T> cVar = j2 != null ? j2.get() : null;
            if (e(cVar) && cVar != null) {
                cVar.a(new a(), e.f.c.b.a.a());
                return true;
            }
            b(cVar);
            return false;
        }

        @Override // e.f.d.a, e.f.d.c
        public boolean close() {
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                c<T> cVar = this.f17218h;
                this.f17218h = null;
                c<T> cVar2 = this.f17219i;
                this.f17219i = null;
                b(cVar2);
                b(cVar);
                return true;
            }
        }

        @Override // e.f.d.a, e.f.d.c
        @Nullable
        public synchronized T e() {
            c<T> i2;
            i2 = i();
            return i2 != null ? i2.e() : null;
        }

        private void b(c<T> cVar) {
            if (cVar != null) {
                cVar.close();
            }
        }

        @Override // e.f.d.a, e.f.d.c
        public synchronized boolean a() {
            boolean z;
            c<T> i2 = i();
            if (i2 != null) {
                z = i2.a();
            }
            return z;
        }

        private synchronized boolean e(c<T> cVar) {
            if (g()) {
                return false;
            }
            this.f17218h = cVar;
            return true;
        }

        private synchronized boolean a(c<T> cVar) {
            if (!g() && cVar == this.f17218h) {
                this.f17218h = null;
                return true;
            }
            return false;
        }

        private void a(c<T> cVar, boolean z) {
            c<T> cVar2;
            synchronized (this) {
                if (cVar == this.f17218h && cVar != this.f17219i) {
                    if (this.f17219i != null && !z) {
                        cVar2 = null;
                        b(cVar2);
                    }
                    c<T> cVar3 = this.f17219i;
                    this.f17219i = cVar;
                    cVar2 = cVar3;
                    b(cVar2);
                }
            }
        }
    }

    private f(List<j<c<T>>> list) {
        com.facebook.common.internal.h.a(!list.isEmpty(), "List of suppliers is empty!");
        this.f17216a = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            return com.facebook.common.internal.g.a(this.f17216a, ((f) obj).f17216a);
        }
        return false;
    }

    public int hashCode() {
        return this.f17216a.hashCode();
    }

    public String toString() {
        g.b a2 = com.facebook.common.internal.g.a(this);
        a2.a("list", this.f17216a);
        return a2.toString();
    }

    public static <T> f<T> a(List<j<c<T>>> list) {
        return new f<>(list);
    }

    @Override // com.facebook.common.internal.j
    public c<T> get() {
        return new b();
    }
}
