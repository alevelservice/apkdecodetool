package a.e;

import androidx.annotation.Nullable;

/* compiled from: SparseArrayCompat.java */
/* loaded from: classes.dex */
public class h<E> implements Cloneable {

    /* renamed from: i, reason: collision with root package name */
    private static final Object f127i = new Object();

    /* renamed from: e, reason: collision with root package name */
    private boolean f128e;

    /* renamed from: f, reason: collision with root package name */
    private int[] f129f;

    /* renamed from: g, reason: collision with root package name */
    private Object[] f130g;

    /* renamed from: h, reason: collision with root package name */
    private int f131h;

    public h() {
        this(10);
    }

    private void c() {
        int i2 = this.f131h;
        int[] iArr = this.f129f;
        Object[] objArr = this.f130g;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            if (obj != f127i) {
                if (i4 != i3) {
                    iArr[i3] = iArr[i4];
                    objArr[i3] = obj;
                    objArr[i4] = null;
                }
                i3++;
            }
        }
        this.f128e = false;
        this.f131h = i3;
    }

    @Nullable
    public E a(int i2) {
        return b(i2, null);
    }

    public E b(int i2, E e2) {
        int a2 = c.a(this.f129f, this.f131h, i2);
        if (a2 >= 0) {
            Object[] objArr = this.f130g;
            if (objArr[a2] != f127i) {
                return (E) objArr[a2];
            }
        }
        return e2;
    }

    public void d(int i2) {
        int a2 = c.a(this.f129f, this.f131h, i2);
        if (a2 >= 0) {
            Object[] objArr = this.f130g;
            Object obj = objArr[a2];
            Object obj2 = f127i;
            if (obj != obj2) {
                objArr[a2] = obj2;
                this.f128e = true;
            }
        }
    }

    public E e(int i2) {
        if (this.f128e) {
            c();
        }
        return (E) this.f130g[i2];
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f131h * 28);
        sb.append('{');
        for (int i2 = 0; i2 < this.f131h; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(c(i2));
            sb.append('=');
            E e2 = e(i2);
            if (e2 != this) {
                sb.append(e2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public h(int i2) {
        this.f128e = false;
        if (i2 == 0) {
            this.f129f = c.f89a;
            this.f130g = c.f91c;
        } else {
            int b2 = c.b(i2);
            this.f129f = new int[b2];
            this.f130g = new Object[b2];
        }
    }

    public int a(E e2) {
        if (this.f128e) {
            c();
        }
        for (int i2 = 0; i2 < this.f131h; i2++) {
            if (this.f130g[i2] == e2) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public h<E> m1clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f129f = (int[]) this.f129f.clone();
            hVar.f130g = (Object[]) this.f130g.clone();
            return hVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public int b() {
        if (this.f128e) {
            c();
        }
        return this.f131h;
    }

    public void a() {
        int i2 = this.f131h;
        Object[] objArr = this.f130g;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        this.f131h = 0;
        this.f128e = false;
    }

    public int b(int i2) {
        if (this.f128e) {
            c();
        }
        return c.a(this.f129f, this.f131h, i2);
    }

    public void a(int i2, E e2) {
        int i3 = this.f131h;
        if (i3 != 0 && i2 <= this.f129f[i3 - 1]) {
            c(i2, e2);
            return;
        }
        if (this.f128e && this.f131h >= this.f129f.length) {
            c();
        }
        int i4 = this.f131h;
        if (i4 >= this.f129f.length) {
            int b2 = c.b(i4 + 1);
            int[] iArr = new int[b2];
            Object[] objArr = new Object[b2];
            int[] iArr2 = this.f129f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f130g;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f129f = iArr;
            this.f130g = objArr;
        }
        this.f129f[i4] = i2;
        this.f130g[i4] = e2;
        this.f131h = i4 + 1;
    }

    public void c(int i2, E e2) {
        int a2 = c.a(this.f129f, this.f131h, i2);
        if (a2 >= 0) {
            this.f130g[a2] = e2;
            return;
        }
        int i3 = a2 ^ (-1);
        if (i3 < this.f131h) {
            Object[] objArr = this.f130g;
            if (objArr[i3] == f127i) {
                this.f129f[i3] = i2;
                objArr[i3] = e2;
                return;
            }
        }
        if (this.f128e && this.f131h >= this.f129f.length) {
            c();
            i3 = c.a(this.f129f, this.f131h, i2) ^ (-1);
        }
        int i4 = this.f131h;
        if (i4 >= this.f129f.length) {
            int b2 = c.b(i4 + 1);
            int[] iArr = new int[b2];
            Object[] objArr2 = new Object[b2];
            int[] iArr2 = this.f129f;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f130g;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f129f = iArr;
            this.f130g = objArr2;
        }
        int i5 = this.f131h;
        if (i5 - i3 != 0) {
            int[] iArr3 = this.f129f;
            int i6 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i6, i5 - i3);
            Object[] objArr4 = this.f130g;
            System.arraycopy(objArr4, i3, objArr4, i6, this.f131h - i3);
        }
        this.f129f[i3] = i2;
        this.f130g[i3] = e2;
        this.f131h++;
    }

    public int c(int i2) {
        if (this.f128e) {
            c();
        }
        return this.f129f[i2];
    }
}
