package e.f.d;

import com.facebook.common.internal.g;
import com.facebook.common.internal.j;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: IncreasingQualityDataSourceSupplier.java */
@ThreadSafe
/* loaded from: classes.dex */
public class g<T> implements j<c<T>> {

    /* renamed from: a, reason: collision with root package name */
    private final List<j<c<T>>> f17222a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f17223b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: IncreasingQualityDataSourceSupplier.java */
    @ThreadSafe
    /* loaded from: classes.dex */
    public class a extends e.f.d.a<T> {

        /* renamed from: g, reason: collision with root package name */
        @GuardedBy("IncreasingQualityDataSource.this")
        @Nullable
        private ArrayList<c<T>> f17224g;

        /* renamed from: h, reason: collision with root package name */
        @GuardedBy("IncreasingQualityDataSource.this")
        private int f17225h;

        /* renamed from: i, reason: collision with root package name */
        private int f17226i;

        /* renamed from: j, reason: collision with root package name */
        private AtomicInteger f17227j;

        /* renamed from: k, reason: collision with root package name */
        @Nullable
        private Throwable f17228k;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IncreasingQualityDataSourceSupplier.java */
        /* renamed from: e.f.d.g$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0187a implements e<T> {

            /* renamed from: a, reason: collision with root package name */
            private int f17230a;

            public C0187a(int i2) {
                this.f17230a = i2;
            }

            @Override // e.f.d.e
            public void a(c<T> cVar) {
            }

            @Override // e.f.d.e
            public void b(c<T> cVar) {
                a.this.a(this.f17230a, cVar);
            }

            @Override // e.f.d.e
            public void c(c<T> cVar) {
                if (cVar.a()) {
                    a.this.b(this.f17230a, cVar);
                } else if (cVar.b()) {
                    a.this.a(this.f17230a, cVar);
                }
            }

            @Override // e.f.d.e
            public void d(c<T> cVar) {
                if (this.f17230a == 0) {
                    a.this.a(cVar.getProgress());
                }
            }
        }

        public a() {
            if (g.this.f17223b) {
                return;
            }
            i();
        }

        @Nullable
        private synchronized c<T> c(int i2, c<T> cVar) {
            if (cVar == j()) {
                return null;
            }
            if (cVar != b(i2)) {
                return cVar;
            }
            return a(i2);
        }

        private void i() {
            if (this.f17227j != null) {
                return;
            }
            synchronized (this) {
                if (this.f17227j == null) {
                    this.f17227j = new AtomicInteger(0);
                    int size = g.this.f17222a.size();
                    this.f17226i = size;
                    this.f17225h = size;
                    this.f17224g = new ArrayList<>(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        c<T> cVar = (c) ((j) g.this.f17222a.get(i2)).get();
                        this.f17224g.add(cVar);
                        cVar.a(new C0187a(i2), e.f.c.b.a.a());
                        if (cVar.a()) {
                            break;
                        }
                    }
                }
            }
        }

        @Nullable
        private synchronized c<T> j() {
            return b(this.f17225h);
        }

        private void k() {
            Throwable th;
            if (this.f17227j.incrementAndGet() != this.f17226i || (th = this.f17228k) == null) {
                return;
            }
            a(th);
        }

        @Override // e.f.d.a, e.f.d.c
        public boolean close() {
            if (g.this.f17223b) {
                i();
            }
            synchronized (this) {
                if (!super.close()) {
                    return false;
                }
                ArrayList<c<T>> arrayList = this.f17224g;
                this.f17224g = null;
                if (arrayList == null) {
                    return true;
                }
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    a((c) arrayList.get(i2));
                }
                return true;
            }
        }

        @Override // e.f.d.a, e.f.d.c
        @Nullable
        public synchronized T e() {
            c<T> j2;
            if (g.this.f17223b) {
                i();
            }
            j2 = j();
            return j2 != null ? j2.e() : null;
        }

        @Nullable
        private synchronized c<T> a(int i2) {
            c<T> cVar;
            cVar = null;
            if (this.f17224g != null && i2 < this.f17224g.size()) {
                cVar = this.f17224g.set(i2, null);
            }
            return cVar;
        }

        @Nullable
        private synchronized c<T> b(int i2) {
            return (this.f17224g == null || i2 >= this.f17224g.size()) ? null : this.f17224g.get(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i2, c<T> cVar) {
            a(i2, cVar, cVar.b());
            if (cVar == j()) {
                a((a) null, i2 == 0 && cVar.b());
            }
            k();
        }

        @Override // e.f.d.a, e.f.d.c
        public synchronized boolean a() {
            boolean z;
            if (g.this.f17223b) {
                i();
            }
            c<T> j2 = j();
            if (j2 != null) {
                z = j2.a();
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i2, c<T> cVar) {
            a((c) c(i2, cVar));
            if (i2 == 0) {
                this.f17228k = cVar.c();
            }
            k();
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0024 A[LOOP:0: B:16:0x0022->B:17:0x0024, LOOP_END] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(int r4, e.f.d.c<T> r5, boolean r6) {
            /*
                r3 = this;
                monitor-enter(r3)
                int r0 = r3.f17225h     // Catch: java.lang.Throwable -> L31
                int r1 = r3.f17225h     // Catch: java.lang.Throwable -> L31
                e.f.d.c r2 = r3.b(r4)     // Catch: java.lang.Throwable -> L31
                if (r5 != r2) goto L2f
                int r5 = r3.f17225h     // Catch: java.lang.Throwable -> L31
                if (r4 != r5) goto L10
                goto L2f
            L10:
                e.f.d.c r5 = r3.j()     // Catch: java.lang.Throwable -> L31
                if (r5 == 0) goto L1f
                if (r6 == 0) goto L1d
                int r5 = r3.f17225h     // Catch: java.lang.Throwable -> L31
                if (r4 >= r5) goto L1d
                goto L1f
            L1d:
                r4 = r1
                goto L21
            L1f:
                r3.f17225h = r4     // Catch: java.lang.Throwable -> L31
            L21:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L31
            L22:
                if (r0 <= r4) goto L2e
                e.f.d.c r5 = r3.a(r0)
                r3.a(r5)
                int r0 = r0 + (-1)
                goto L22
            L2e:
                return
            L2f:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L31
                return
            L31:
                r4 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L31
                goto L35
            L34:
                throw r4
            L35:
                goto L34
            */
            throw new UnsupportedOperationException("Method not decompiled: e.f.d.g.a.a(int, e.f.d.c, boolean):void");
        }

        private void a(c<T> cVar) {
            if (cVar != null) {
                cVar.close();
            }
        }
    }

    private g(List<j<c<T>>> list, boolean z) {
        com.facebook.common.internal.h.a(!list.isEmpty(), "List of suppliers is empty!");
        this.f17222a = list;
        this.f17223b = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            return com.facebook.common.internal.g.a(this.f17222a, ((g) obj).f17222a);
        }
        return false;
    }

    public int hashCode() {
        return this.f17222a.hashCode();
    }

    public String toString() {
        g.b a2 = com.facebook.common.internal.g.a(this);
        a2.a("list", this.f17222a);
        return a2.toString();
    }

    public static <T> g<T> a(List<j<c<T>>> list, boolean z) {
        return new g<>(list, z);
    }

    @Override // com.facebook.common.internal.j
    public c<T> get() {
        return new a();
    }
}
