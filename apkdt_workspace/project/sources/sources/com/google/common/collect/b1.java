package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.v0;
import com.google.common.collect.w0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ObjectCountHashMap.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class b1<K> {

    /* renamed from: a, reason: collision with root package name */
    transient Object[] f14039a;

    /* renamed from: b, reason: collision with root package name */
    transient int[] f14040b;

    /* renamed from: c, reason: collision with root package name */
    transient int f14041c;

    /* renamed from: d, reason: collision with root package name */
    transient int f14042d;

    /* renamed from: e, reason: collision with root package name */
    private transient int[] f14043e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    transient long[] f14044f;

    /* renamed from: g, reason: collision with root package name */
    private transient float f14045g;

    /* renamed from: h, reason: collision with root package name */
    private transient int f14046h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObjectCountHashMap.java */
    /* loaded from: classes.dex */
    public class a extends w0.a<K> {

        /* renamed from: e, reason: collision with root package name */
        @NullableDecl
        final K f14047e;

        /* renamed from: f, reason: collision with root package name */
        int f14048f;

        a(int i2) {
            this.f14047e = (K) b1.this.f14039a[i2];
            this.f14048f = i2;
        }

        void a() {
            int i2 = this.f14048f;
            if (i2 == -1 || i2 >= b1.this.c() || !e.i.c.a.h.a(this.f14047e, b1.this.f14039a[this.f14048f])) {
                this.f14048f = b1.this.b(this.f14047e);
            }
        }

        @Override // com.google.common.collect.v0.a
        public int getCount() {
            a();
            int i2 = this.f14048f;
            if (i2 == -1) {
                return 0;
            }
            return b1.this.f14040b[i2];
        }

        @Override // com.google.common.collect.v0.a
        public K getElement() {
            return this.f14047e;
        }
    }

    b1() {
        a(3, 1.0f);
    }

    private static int a(long j2) {
        return (int) (j2 >>> 32);
    }

    private static long a(long j2, int i2) {
        return (j2 & (-4294967296L)) | (i2 & 4294967295L);
    }

    private static int b(long j2) {
        return (int) j2;
    }

    public static <K> b1<K> d() {
        return new b1<>();
    }

    private int e() {
        return this.f14043e.length - 1;
    }

    public static <K> b1<K> i(int i2) {
        return new b1<>(i2);
    }

    private static long[] j(int i2) {
        long[] jArr = new long[i2];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int[] k(int i2) {
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private void l(int i2) {
        int length = this.f14044f.length;
        if (i2 > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                h(max);
            }
        }
    }

    private void m(int i2) {
        if (this.f14043e.length >= 1073741824) {
            this.f14046h = Integer.MAX_VALUE;
            return;
        }
        int i3 = ((int) (i2 * this.f14045g)) + 1;
        int[] k2 = k(i2);
        long[] jArr = this.f14044f;
        int length = k2.length - 1;
        for (int i4 = 0; i4 < this.f14041c; i4++) {
            int a2 = a(jArr[i4]);
            int i5 = a2 & length;
            int i6 = k2[i5];
            k2[i5] = i4;
            jArr[i4] = (a2 << 32) | (4294967295L & i6);
        }
        this.f14046h = i3;
        this.f14043e = k2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i2, int i3) {
        return i2 - 1;
    }

    void a(int i2, float f2) {
        e.i.c.a.j.a(i2 >= 0, "Initial capacity must be non-negative");
        e.i.c.a.j.a(f2 > 0.0f, "Illegal load factor");
        int a2 = u.a(i2, f2);
        this.f14043e = k(a2);
        this.f14045g = f2;
        this.f14039a = new Object[i2];
        this.f14040b = new int[i2];
        this.f14044f = j(i2);
        this.f14046h = Math.max(1, (int) (a2 * f2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f14041c == 0 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f14041c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(int i2) {
        int i3 = i2 + 1;
        if (i3 < this.f14041c) {
            return i3;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public int g(int i2) {
        return b(this.f14039a[i2], a(this.f14044f[i2]));
    }

    void h(int i2) {
        this.f14039a = Arrays.copyOf(this.f14039a, i2);
        this.f14040b = Arrays.copyOf(this.f14040b, i2);
        long[] jArr = this.f14044f;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i2);
        if (i2 > length) {
            Arrays.fill(copyOf, length, i2, -1L);
        }
        this.f14044f = copyOf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i2, int i3) {
        e.i.c.a.j.a(i2, this.f14041c);
        this.f14040b[i2] = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public K c(int i2) {
        e.i.c.a.j.a(i2, this.f14041c);
        return (K) this.f14039a[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(int i2) {
        e.i.c.a.j.a(i2, this.f14041c);
        return this.f14040b[i2];
    }

    void e(int i2) {
        int c2 = c() - 1;
        if (i2 < c2) {
            Object[] objArr = this.f14039a;
            objArr[i2] = objArr[c2];
            int[] iArr = this.f14040b;
            iArr[i2] = iArr[c2];
            objArr[c2] = null;
            iArr[c2] = 0;
            long[] jArr = this.f14044f;
            long j2 = jArr[c2];
            jArr[i2] = j2;
            jArr[c2] = -1;
            int a2 = a(j2) & e();
            int[] iArr2 = this.f14043e;
            int i3 = iArr2[a2];
            if (i3 == c2) {
                iArr2[a2] = i2;
                return;
            }
            while (true) {
                long j3 = this.f14044f[i3];
                int b2 = b(j3);
                if (b2 == c2) {
                    this.f14044f[i3] = a(j3, i2);
                    return;
                }
                i3 = b2;
            }
        } else {
            this.f14039a[i2] = null;
            this.f14040b[i2] = 0;
            this.f14044f[i2] = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(b1<? extends K> b1Var) {
        a(b1Var.c(), 1.0f);
        int b2 = b1Var.b();
        while (b2 != -1) {
            a((b1<K>) b1Var.c(b2), b1Var.d(b2));
            b2 = b1Var.f(b2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0.a<K> b(int i2) {
        e.i.c.a.j.a(i2, this.f14041c);
        return new a(i2);
    }

    @CanIgnoreReturnValue
    public int c(@NullableDecl Object obj) {
        return b(obj, u.a(obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(@NullableDecl Object obj) {
        int a2 = u.a(obj);
        int i2 = this.f14043e[e() & a2];
        while (i2 != -1) {
            long j2 = this.f14044f[i2];
            if (a(j2) == a2 && e.i.c.a.h.a(obj, this.f14039a[i2])) {
                return i2;
            }
            i2 = b(j2);
        }
        return -1;
    }

    b1(int i2) {
        this(i2, 1.0f);
    }

    b1(int i2, float f2) {
        a(i2, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        if (i2 > this.f14044f.length) {
            h(i2);
        }
        if (i2 >= this.f14046h) {
            m(Math.max(2, Integer.highestOneBit(i2 - 1) << 1));
        }
    }

    private int b(@NullableDecl Object obj, int i2) {
        int e2 = e() & i2;
        int i3 = this.f14043e[e2];
        if (i3 == -1) {
            return 0;
        }
        int i4 = -1;
        while (true) {
            if (a(this.f14044f[i3]) == i2 && e.i.c.a.h.a(obj, this.f14039a[i3])) {
                int i5 = this.f14040b[i3];
                if (i4 == -1) {
                    this.f14043e[e2] = b(this.f14044f[i3]);
                } else {
                    long[] jArr = this.f14044f;
                    jArr[i4] = a(jArr[i4], b(jArr[i3]));
                }
                e(i3);
                this.f14041c--;
                this.f14042d++;
                return i5;
            }
            int b2 = b(this.f14044f[i3]);
            if (b2 == -1) {
                return 0;
            }
            i4 = i3;
            i3 = b2;
        }
    }

    @CanIgnoreReturnValue
    public int a(@NullableDecl K k2, int i2) {
        i.b(i2, "count");
        long[] jArr = this.f14044f;
        Object[] objArr = this.f14039a;
        int[] iArr = this.f14040b;
        int a2 = u.a(k2);
        int e2 = e() & a2;
        int i3 = this.f14041c;
        int[] iArr2 = this.f14043e;
        int i4 = iArr2[e2];
        if (i4 == -1) {
            iArr2[e2] = i3;
        } else {
            while (true) {
                long j2 = jArr[i4];
                if (a(j2) == a2 && e.i.c.a.h.a(k2, objArr[i4])) {
                    int i5 = iArr[i4];
                    iArr[i4] = i2;
                    return i5;
                }
                int b2 = b(j2);
                if (b2 == -1) {
                    jArr[i4] = a(j2, i3);
                    break;
                }
                i4 = b2;
            }
        }
        if (i3 != Integer.MAX_VALUE) {
            int i6 = i3 + 1;
            l(i6);
            a(i3, k2, i2, a2);
            this.f14041c = i6;
            if (i3 >= this.f14046h) {
                m(this.f14043e.length * 2);
            }
            this.f14042d++;
            return 0;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    void a(int i2, @NullableDecl K k2, int i3, int i4) {
        this.f14044f[i2] = (i4 << 32) | 4294967295L;
        this.f14039a[i2] = k2;
        this.f14040b[i2] = i3;
    }

    public int a(@NullableDecl Object obj) {
        int b2 = b(obj);
        if (b2 == -1) {
            return 0;
        }
        return this.f14040b[b2];
    }

    public void a() {
        this.f14042d++;
        Arrays.fill(this.f14039a, 0, this.f14041c, (Object) null);
        Arrays.fill(this.f14040b, 0, this.f14041c, 0);
        Arrays.fill(this.f14043e, -1);
        Arrays.fill(this.f14044f, -1L);
        this.f14041c = 0;
    }
}
