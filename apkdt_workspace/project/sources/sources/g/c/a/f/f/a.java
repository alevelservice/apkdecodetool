package g.c.a.f.f;

import g.c.a.f.c.d;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.internal.util.c;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: SpscLinkedArrayQueue.java */
/* loaded from: classes2.dex */
public final class a<T> implements d<T> {
    static final int m = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    private static final Object n = new Object();

    /* renamed from: f, reason: collision with root package name */
    int f18286f;

    /* renamed from: g, reason: collision with root package name */
    long f18287g;

    /* renamed from: h, reason: collision with root package name */
    final int f18288h;

    /* renamed from: i, reason: collision with root package name */
    AtomicReferenceArray<Object> f18289i;

    /* renamed from: j, reason: collision with root package name */
    final int f18290j;

    /* renamed from: k, reason: collision with root package name */
    AtomicReferenceArray<Object> f18291k;

    /* renamed from: e, reason: collision with root package name */
    final AtomicLong f18285e = new AtomicLong();

    /* renamed from: l, reason: collision with root package name */
    final AtomicLong f18292l = new AtomicLong();

    public a(int i2) {
        int a2 = c.a(Math.max(8, i2));
        int i3 = a2 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(a2 + 1);
        this.f18289i = atomicReferenceArray;
        this.f18288h = i3;
        a(a2);
        this.f18291k = atomicReferenceArray;
        this.f18290j = i3;
        this.f18287g = i3 - 1;
        b(0L);
    }

    private boolean a(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j2, int i2) {
        a(atomicReferenceArray, i2, t);
        b(j2 + 1);
        return true;
    }

    private static int b(int i2) {
        return i2;
    }

    private AtomicReferenceArray<Object> b(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        b(i2);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) a(atomicReferenceArray, i2);
        a(atomicReferenceArray, i2, (Object) null);
        return atomicReferenceArray2;
    }

    private long c() {
        return this.f18292l.get();
    }

    private long d() {
        return this.f18285e.get();
    }

    @Override // g.c.a.f.c.e
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // g.c.a.f.c.e
    public boolean isEmpty() {
        return d() == c();
    }

    @Override // g.c.a.f.c.e
    public boolean offer(T t) {
        if (t != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.f18289i;
            long b2 = b();
            int i2 = this.f18288h;
            int a2 = a(b2, i2);
            if (b2 < this.f18287g) {
                return a(atomicReferenceArray, t, b2, a2);
            }
            long j2 = this.f18286f + b2;
            if (a(atomicReferenceArray, a(j2, i2)) == null) {
                this.f18287g = j2 - 1;
                return a(atomicReferenceArray, t, b2, a2);
            }
            if (a(atomicReferenceArray, a(1 + b2, i2)) == null) {
                return a(atomicReferenceArray, t, b2, a2);
            }
            a(atomicReferenceArray, b2, a2, t, i2);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // g.c.a.f.c.e
    @Nullable
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f18291k;
        long a2 = a();
        int i2 = this.f18290j;
        int a3 = a(a2, i2);
        T t = (T) a(atomicReferenceArray, a3);
        boolean z = t == n;
        if (t == null || z) {
            if (z) {
                return a(b(atomicReferenceArray, i2 + 1), a2, i2);
            }
            return null;
        }
        a(atomicReferenceArray, a3, (Object) null);
        a(a2 + 1);
        return t;
    }

    private void a(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2, T t, long j3) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f18289i = atomicReferenceArray2;
        this.f18287g = (j3 + j2) - 1;
        a(atomicReferenceArray2, i2, t);
        a(atomicReferenceArray, atomicReferenceArray2);
        a(atomicReferenceArray, i2, n);
        b(j2 + 1);
    }

    private long b() {
        return this.f18285e.get();
    }

    private void b(long j2) {
        this.f18285e.lazySet(j2);
    }

    private void a(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        int length = atomicReferenceArray.length() - 1;
        b(length);
        a(atomicReferenceArray, length, atomicReferenceArray2);
    }

    private T a(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2) {
        this.f18291k = atomicReferenceArray;
        int a2 = a(j2, i2);
        T t = (T) a(atomicReferenceArray, a2);
        if (t != null) {
            a(atomicReferenceArray, a2, (Object) null);
            a(j2 + 1);
        }
        return t;
    }

    private void a(int i2) {
        this.f18286f = Math.min(i2 / 4, m);
    }

    private long a() {
        return this.f18292l.get();
    }

    private void a(long j2) {
        this.f18292l.lazySet(j2);
    }

    private static int a(long j2, int i2) {
        int i3 = ((int) j2) & i2;
        b(i3);
        return i3;
    }

    private static void a(AtomicReferenceArray<Object> atomicReferenceArray, int i2, Object obj) {
        atomicReferenceArray.lazySet(i2, obj);
    }

    private static Object a(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }
}
