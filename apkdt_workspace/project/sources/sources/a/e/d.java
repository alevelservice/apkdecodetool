package a.e;

import androidx.annotation.Nullable;

/* compiled from: LongSparseArray.java */
/* loaded from: classes.dex */
public class d<E> implements Cloneable {

    /* renamed from: i, reason: collision with root package name */
    private static final Object f92i = new Object();

    /* renamed from: e, reason: collision with root package name */
    private boolean f93e;

    /* renamed from: f, reason: collision with root package name */
    private long[] f94f;

    /* renamed from: g, reason: collision with root package name */
    private Object[] f95g;

    /* renamed from: h, reason: collision with root package name */
    private int f96h;

    public d() {
        this(10);
    }

    @Nullable
    public E a(long j2) {
        return b(j2, null);
    }

    public E b(long j2, E e2) {
        int a2 = c.a(this.f94f, this.f96h, j2);
        if (a2 >= 0) {
            Object[] objArr = this.f95g;
            if (objArr[a2] != f92i) {
                return (E) objArr[a2];
            }
        }
        return e2;
    }

    public void c(long j2) {
        int a2 = c.a(this.f94f, this.f96h, j2);
        if (a2 >= 0) {
            Object[] objArr = this.f95g;
            Object obj = objArr[a2];
            Object obj2 = f92i;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f93e = true;
            }
        }
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f96h * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f96h; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(a(i2));
            sb.append('=');
            E c2 = c(i2);
            if (c2 != this) {
                sb.append(c2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i2) {
        this.f93e = false;
        if (i2 == 0) {
            this.f94f = c.f90b;
            this.f95g = c.f91c;
        } else {
            int c2 = c.c(i2);
            this.f94f = new long[c2];
            this.f95g = new Object[c2];
        }
    }

    public long a(int i2) {
        if (this.f93e) {
            c();
        }
        return this.f94f[i2];
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public d<E> m0clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f94f = (long[]) this.f94f.clone();
            dVar.f95g = (Object[]) this.f95g.clone();
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public void b(int i2) {
        Object[] objArr = this.f95g;
        Object obj = objArr[i2];
        Object obj2 = f92i;
        if (obj != obj2) {
            objArr[i2] = obj2;
            this.f93e = true;
        }
    }

    private void c() {
        int i2 = this.f96h;
        long[] jArr = this.f94f;
        Object[] objArr = this.f95g;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f92i) {
                if (i4 != i3) {
                    jArr[i3] = jArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f93e = false;
        this.f96h = i3;
    }

    public void a(int i2, E e2) {
        if (this.f93e) {
            c();
        }
        this.f95g[i2] = e2;
    }

    public int b() {
        if (this.f93e) {
            c();
        }
        return this.f96h;
    }

    public boolean a(E e2) {
        return b((d<E>) e2) >= 0;
    }

    public void a() {
        int i2 = this.f96h;
        Object[] objArr = this.f95g;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f96h = 0;
        this.f93e = false;
    }

    public int b(long j2) {
        if (this.f93e) {
            c();
        }
        return c.a(this.f94f, this.f96h, j2);
    }

    public int b(E e2) {
        if (this.f93e) {
            c();
        }
        for (int i2 = 0; i2 < this.f96h; i2++) {
            if (this.f95g[i2] == e2) {
                return i2;
            }
        }
        return -1;
    }

    public void a(long j2, E e2) {
        int i2 = this.f96h;
        if (i2 != 0 && j2 <= this.f94f[i2 - 1]) {
            c(j2, e2);
            return;
        }
        if (this.f93e && this.f96h >= this.f94f.length) {
            c();
        }
        int i3 = this.f96h;
        if (i3 >= this.f94f.length) {
            int c2 = c.c(i3 + 1);
            long[] jArr = new long[c2];
            Object[] objArr = new Object[c2];
            long[] jArr2 = this.f94f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f95g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f94f = jArr;
            this.f95g = objArr;
        }
        this.f94f[i3] = j2;
        this.f95g[i3] = e2;
        this.f96h = i3 + 1;
    }

    public void c(long j2, E e2) {
        int a2 = c.a(this.f94f, this.f96h, j2);
        if (a2 >= 0) {
            this.f95g[a2] = e2;
            return;
        }
        int i2 = a2 ^ (-1);
        if (i2 < this.f96h) {
            Object[] objArr = this.f95g;
            if (objArr[i2] == f92i) {
                this.f94f[i2] = j2;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.f93e && this.f96h >= this.f94f.length) {
            c();
            i2 = c.a(this.f94f, this.f96h, j2) ^ (-1);
        }
        int i3 = this.f96h;
        if (i3 >= this.f94f.length) {
            int c2 = c.c(i3 + 1);
            long[] jArr = new long[c2];
            Object[] objArr2 = new Object[c2];
            long[] jArr2 = this.f94f;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f95g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f94f = jArr;
            this.f95g = objArr2;
        }
        int i4 = this.f96h;
        if (i4 - i2 != 0) {
            long[] jArr3 = this.f94f;
            int i5 = i2 + 1;
            System.arraycopy(jArr3, i2, jArr3, i5, i4 - i2);
            Object[] objArr4 = this.f95g;
            System.arraycopy(objArr4, i2, objArr4, i5, this.f96h - i2);
        }
        this.f94f[i2] = j2;
        this.f95g[i2] = e2;
        this.f96h++;
    }

    public E c(int i2) {
        if (this.f93e) {
            c();
        }
        return (E) this.f95g[i2];
    }
}
