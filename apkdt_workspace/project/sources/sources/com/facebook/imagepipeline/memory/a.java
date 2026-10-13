package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.facebook.common.internal.VisibleForTesting;
import java.util.Set;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;

/* compiled from: BasePool.java */
/* loaded from: classes.dex */
public abstract class a<V> implements e.f.c.f.e<V> {

    /* renamed from: a, reason: collision with root package name */
    private final Class<?> f3786a = getClass();

    /* renamed from: b, reason: collision with root package name */
    final e.f.c.f.c f3787b;

    /* renamed from: c, reason: collision with root package name */
    final f0 f3788c;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    final SparseArray<f<V>> f3789d;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final Set<V> f3790e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3791f;

    /* renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    final C0066a f3792g;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("this")
    final C0066a f3793h;

    /* renamed from: i, reason: collision with root package name */
    private final g0 f3794i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BasePool.java */
    @VisibleForTesting
    @NotThreadSafe
    /* renamed from: com.facebook.imagepipeline.memory.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0066a {

        /* renamed from: a, reason: collision with root package name */
        int f3795a;

        /* renamed from: b, reason: collision with root package name */
        int f3796b;

        C0066a() {
        }

        public void a(int i2) {
            int i3;
            int i4 = this.f3796b;
            if (i4 >= i2 && (i3 = this.f3795a) > 0) {
                this.f3795a = i3 - 1;
                this.f3796b = i4 - i2;
            } else {
                e.f.c.d.a.d("com.facebook.imagepipeline.memory.BasePool.Counter", "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(i2), Integer.valueOf(this.f3796b), Integer.valueOf(this.f3795a));
            }
        }

        public void b(int i2) {
            this.f3795a++;
            this.f3796b += i2;
        }
    }

    /* compiled from: BasePool.java */
    /* loaded from: classes.dex */
    public static class b extends RuntimeException {
        public b(Object obj) {
            super("Invalid size: " + obj.toString());
        }
    }

    /* compiled from: BasePool.java */
    /* loaded from: classes.dex */
    public static class c extends RuntimeException {
        public c(int i2, int i3, int i4, int i5) {
            super("Pool hard cap violation? Hard cap = " + i2 + " Used size = " + i3 + " Free size = " + i4 + " Request size = " + i5);
        }
    }

    public a(e.f.c.f.c cVar, f0 f0Var, g0 g0Var) {
        com.facebook.common.internal.h.a(cVar);
        this.f3787b = cVar;
        com.facebook.common.internal.h.a(f0Var);
        this.f3788c = f0Var;
        com.facebook.common.internal.h.a(g0Var);
        this.f3794i = g0Var;
        this.f3789d = new SparseArray<>();
        if (this.f3788c.f3848d) {
            e();
        } else {
            b(new SparseIntArray(0));
        }
        this.f3790e = com.facebook.common.internal.i.b();
        this.f3793h = new C0066a();
        this.f3792g = new C0066a();
    }

    private synchronized void b(SparseIntArray sparseIntArray) {
        com.facebook.common.internal.h.a(sparseIntArray);
        this.f3789d.clear();
        SparseIntArray sparseIntArray2 = this.f3788c.f3847c;
        if (sparseIntArray2 != null) {
            for (int i2 = 0; i2 < sparseIntArray2.size(); i2++) {
                int keyAt = sparseIntArray2.keyAt(i2);
                this.f3789d.put(keyAt, new f<>(e(keyAt), sparseIntArray2.valueAt(i2), sparseIntArray.get(keyAt, 0), this.f3788c.f3848d));
            }
            this.f3791f = false;
        } else {
            this.f3791f = true;
        }
    }

    private synchronized void e() {
        SparseIntArray sparseIntArray = this.f3788c.f3847c;
        if (sparseIntArray != null) {
            a(sparseIntArray);
            this.f3791f = false;
        } else {
            this.f3791f = true;
        }
    }

    private synchronized f<V> h(int i2) {
        return this.f3789d.get(i2);
    }

    protected abstract V a(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f3787b.a(this);
        this.f3794i.a(this);
    }

    @VisibleForTesting
    protected abstract void b(V v);

    protected abstract int c(V v);

    @VisibleForTesting
    synchronized void c() {
        if (b()) {
            g(this.f3788c.f3846b);
        }
    }

    protected abstract int d(int i2);

    protected boolean d(V v) {
        com.facebook.common.internal.h.a(v);
        return true;
    }

    protected abstract int e(int i2);

    f<V> f(int i2) {
        return new f<>(e(i2), Integer.MAX_VALUE, 0, this.f3788c.f3848d);
    }

    @VisibleForTesting
    synchronized void g(int i2) {
        int min = Math.min((this.f3792g.f3796b + this.f3793h.f3796b) - i2, this.f3793h.f3796b);
        if (min <= 0) {
            return;
        }
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(this.f3786a, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(i2), Integer.valueOf(this.f3792g.f3796b + this.f3793h.f3796b), Integer.valueOf(min));
        }
        f();
        for (int i3 = 0; i3 < this.f3789d.size() && min > 0; i3++) {
            f<V> valueAt = this.f3789d.valueAt(i3);
            while (min > 0) {
                V f2 = valueAt.f();
                if (f2 == null) {
                    break;
                }
                b((a<V>) f2);
                min -= valueAt.f3840a;
                this.f3793h.a(valueAt.f3840a);
            }
        }
        f();
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(this.f3786a, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(i2), Integer.valueOf(this.f3792g.f3796b + this.f3793h.f3796b));
        }
    }

    @Override // e.f.c.f.e
    public V get(int i2) {
        V a2;
        d();
        int d2 = d(i2);
        synchronized (this) {
            f<V> c2 = c(d2);
            if (c2 != null && (a2 = a((f) c2)) != null) {
                com.facebook.common.internal.h.b(this.f3790e.add(a2));
                int c3 = c((a<V>) a2);
                int e2 = e(c3);
                this.f3792g.b(e2);
                this.f3793h.a(e2);
                this.f3794i.b(e2);
                f();
                if (e.f.c.d.a.a(2)) {
                    e.f.c.d.a.a(this.f3786a, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(a2)), Integer.valueOf(c3));
                }
                return a2;
            }
            int e3 = e(d2);
            if (b(e3)) {
                this.f3792g.b(e3);
                if (c2 != null) {
                    c2.d();
                }
                V v = null;
                try {
                    v = a(d2);
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f3792g.a(e3);
                        f<V> c4 = c(d2);
                        if (c4 != null) {
                            c4.a();
                        }
                        com.facebook.common.internal.l.b(th);
                    }
                }
                synchronized (this) {
                    com.facebook.common.internal.h.b(this.f3790e.add(v));
                    c();
                    this.f3794i.a(e3);
                    f();
                    if (e.f.c.d.a.a(2)) {
                        e.f.c.d.a.a(this.f3786a, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(d2));
                    }
                }
                return v;
            }
            throw new c(this.f3788c.f3845a, this.f3792g.f3796b, this.f3793h.f3796b, e3);
        }
    }

    private synchronized void d() {
        boolean z;
        if (b() && this.f3793h.f3796b != 0) {
            z = false;
            com.facebook.common.internal.h.b(z);
        }
        z = true;
        com.facebook.common.internal.h.b(z);
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void f() {
        if (e.f.c.d.a.a(2)) {
            e.f.c.d.a.a(this.f3786a, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.f3792g.f3795a), Integer.valueOf(this.f3792g.f3796b), Integer.valueOf(this.f3793h.f3795a), Integer.valueOf(this.f3793h.f3796b));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public synchronized V a(f<V> fVar) {
        return fVar.b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        r2.a();
     */
    @Override // e.f.c.f.e, e.f.c.g.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(V r8) {
        /*
            r7 = this;
            com.facebook.common.internal.h.a(r8)
            int r0 = r7.c(r8)
            int r1 = r7.e(r0)
            monitor-enter(r7)
            com.facebook.imagepipeline.memory.f r2 = r7.h(r0)     // Catch: java.lang.Throwable -> Lae
            java.util.Set<V> r3 = r7.f3790e     // Catch: java.lang.Throwable -> Lae
            boolean r3 = r3.remove(r8)     // Catch: java.lang.Throwable -> Lae
            r4 = 2
            if (r3 != 0) goto L3d
            java.lang.Class<?> r2 = r7.f3786a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r3 = "release (free, value unrecognized) (object, size) = (%x, %s)"
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lae
            r5 = 0
            int r6 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> Lae
            r4[r5] = r6     // Catch: java.lang.Throwable -> Lae
            r5 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            r4[r5] = r0     // Catch: java.lang.Throwable -> Lae
            e.f.c.d.a.a(r2, r3, r4)     // Catch: java.lang.Throwable -> Lae
            r7.b(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.g0 r8 = r7.f3794i     // Catch: java.lang.Throwable -> Lae
            r8.c(r1)     // Catch: java.lang.Throwable -> Lae
            goto La9
        L3d:
            if (r2 == 0) goto L7e
            boolean r3 = r2.e()     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L7e
            boolean r3 = r7.b()     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L7e
            boolean r3 = r7.d(r8)     // Catch: java.lang.Throwable -> Lae
            if (r3 != 0) goto L52
            goto L7e
        L52:
            r2.b(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.a$a r2 = r7.f3793h     // Catch: java.lang.Throwable -> Lae
            r2.b(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.a$a r2 = r7.f3792g     // Catch: java.lang.Throwable -> Lae
            r2.a(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.g0 r2 = r7.f3794i     // Catch: java.lang.Throwable -> Lae
            r2.d(r1)     // Catch: java.lang.Throwable -> Lae
            boolean r1 = e.f.c.d.a.a(r4)     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto La9
            java.lang.Class<?> r1 = r7.f3786a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "release (reuse) (object, size) = (%x, %s)"
            int r8 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            e.f.c.d.a.a(r1, r2, r8, r0)     // Catch: java.lang.Throwable -> Lae
            goto La9
        L7e:
            if (r2 == 0) goto L83
            r2.a()     // Catch: java.lang.Throwable -> Lae
        L83:
            boolean r2 = e.f.c.d.a.a(r4)     // Catch: java.lang.Throwable -> Lae
            if (r2 == 0) goto L9c
            java.lang.Class<?> r2 = r7.f3786a     // Catch: java.lang.Throwable -> Lae
            java.lang.String r3 = "release (free) (object, size) = (%x, %s)"
            int r4 = java.lang.System.identityHashCode(r8)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> Lae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lae
            e.f.c.d.a.a(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> Lae
        L9c:
            r7.b(r8)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.a$a r8 = r7.f3792g     // Catch: java.lang.Throwable -> Lae
            r8.a(r1)     // Catch: java.lang.Throwable -> Lae
            com.facebook.imagepipeline.memory.g0 r8 = r7.f3794i     // Catch: java.lang.Throwable -> Lae
            r8.c(r1)     // Catch: java.lang.Throwable -> Lae
        La9:
            r7.f()     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lae
            return
        Lae:
            r8 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Lae
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.a.a(java.lang.Object):void");
    }

    @VisibleForTesting
    synchronized f<V> c(int i2) {
        f<V> fVar = this.f3789d.get(i2);
        if (fVar == null && this.f3791f) {
            if (e.f.c.d.a.a(2)) {
                e.f.c.d.a.b(this.f3786a, "creating new bucket %s", Integer.valueOf(i2));
            }
            f<V> f2 = f(i2);
            this.f3789d.put(i2, f2);
            return f2;
        }
        return fVar;
    }

    @VisibleForTesting
    synchronized boolean b() {
        boolean z;
        z = this.f3792g.f3796b + this.f3793h.f3796b > this.f3788c.f3846b;
        if (z) {
            this.f3794i.a();
        }
        return z;
    }

    @VisibleForTesting
    synchronized boolean b(int i2) {
        int i3 = this.f3788c.f3845a;
        if (i2 > i3 - this.f3792g.f3796b) {
            this.f3794i.b();
            return false;
        }
        int i4 = this.f3788c.f3846b;
        if (i2 > i4 - (this.f3792g.f3796b + this.f3793h.f3796b)) {
            g(i4 - i2);
        }
        if (i2 <= i3 - (this.f3792g.f3796b + this.f3793h.f3796b)) {
            return true;
        }
        this.f3794i.b();
        return false;
    }

    private void a(SparseIntArray sparseIntArray) {
        this.f3789d.clear();
        for (int i2 = 0; i2 < sparseIntArray.size(); i2++) {
            int keyAt = sparseIntArray.keyAt(i2);
            this.f3789d.put(keyAt, new f<>(e(keyAt), sparseIntArray.valueAt(i2), 0, this.f3788c.f3848d));
        }
    }
}
