package io.reactivex.rxjava3.internal.util;

/* compiled from: OpenHashSet.java */
/* loaded from: classes2.dex */
public final class b<T> {

    /* renamed from: a, reason: collision with root package name */
    final float f19621a;

    /* renamed from: b, reason: collision with root package name */
    int f19622b;

    /* renamed from: c, reason: collision with root package name */
    int f19623c;

    /* renamed from: d, reason: collision with root package name */
    int f19624d;

    /* renamed from: e, reason: collision with root package name */
    T[] f19625e;

    public b() {
        this(16, 0.75f);
    }

    static int a(int i2) {
        int i3 = i2 * (-1640531527);
        return i3 ^ (i3 >>> 16);
    }

    public boolean a(T t) {
        T t2;
        T[] tArr = this.f19625e;
        int i2 = this.f19622b;
        int a2 = a(t.hashCode()) & i2;
        T t3 = tArr[a2];
        if (t3 != null) {
            if (t3.equals(t)) {
                return false;
            }
            do {
                a2 = (a2 + 1) & i2;
                t2 = tArr[a2];
                if (t2 == null) {
                }
            } while (!t2.equals(t));
            return false;
        }
        tArr[a2] = t;
        int i3 = this.f19623c + 1;
        this.f19623c = i3;
        if (i3 >= this.f19624d) {
            b();
        }
        return true;
    }

    public boolean b(T t) {
        T t2;
        T[] tArr = this.f19625e;
        int i2 = this.f19622b;
        int a2 = a(t.hashCode()) & i2;
        T t3 = tArr[a2];
        if (t3 == null) {
            return false;
        }
        if (t3.equals(t)) {
            return a(a2, tArr, i2);
        }
        do {
            a2 = (a2 + 1) & i2;
            t2 = tArr[a2];
            if (t2 == null) {
                return false;
            }
        } while (!t2.equals(t));
        return a(a2, tArr, i2);
    }

    public b(int i2, float f2) {
        this.f19621a = f2;
        int a2 = c.a(i2);
        this.f19622b = a2 - 1;
        this.f19624d = (int) (f2 * a2);
        this.f19625e = (T[]) new Object[a2];
    }

    void b() {
        T[] tArr = this.f19625e;
        int length = tArr.length;
        int i2 = length << 1;
        int i3 = i2 - 1;
        T[] tArr2 = (T[]) new Object[i2];
        int i4 = this.f19623c;
        while (true) {
            int i5 = i4 - 1;
            if (i4 == 0) {
                this.f19622b = i3;
                this.f19624d = (int) (i2 * this.f19621a);
                this.f19625e = tArr2;
                return;
            }
            do {
                length--;
            } while (tArr[length] == null);
            int a2 = a(tArr[length].hashCode()) & i3;
            if (tArr2[a2] == null) {
                tArr2[a2] = tArr[length];
                i4 = i5;
            }
            do {
                a2 = (a2 + 1) & i3;
            } while (tArr2[a2] != null);
            tArr2[a2] = tArr[length];
            i4 = i5;
        }
    }

    boolean a(int i2, T[] tArr, int i3) {
        int i4;
        T t;
        this.f19623c--;
        while (true) {
            int i5 = i2 + 1;
            while (true) {
                i4 = i5 & i3;
                t = tArr[i4];
                if (t == null) {
                    tArr[i2] = null;
                    return true;
                }
                int a2 = a(t.hashCode()) & i3;
                if (i2 > i4) {
                    if (i2 >= a2 && a2 > i4) {
                        break;
                    }
                    i5 = i4 + 1;
                } else if (i2 < a2 && a2 <= i4) {
                    i5 = i4 + 1;
                }
            }
            tArr[i2] = t;
            i2 = i4;
        }
    }

    public Object[] a() {
        return this.f19625e;
    }
}
