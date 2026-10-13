package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d4 extends n2<Integer> implements g4, v5, RandomAccess {

    /* renamed from: h, reason: collision with root package name */
    private static final d4 f11818h;

    /* renamed from: f, reason: collision with root package name */
    private int[] f11819f;

    /* renamed from: g, reason: collision with root package name */
    private int f11820g;

    static {
        d4 d4Var = new d4(new int[0], 0);
        f11818h = d4Var;
        d4Var.P();
    }

    d4() {
        this(new int[10], 0);
    }

    public static d4 b() {
        return f11818h;
    }

    private final void m(int i2) {
        if (i2 < 0 || i2 >= this.f11820g) {
            throw new IndexOutOfBoundsException(n(i2));
        }
    }

    private final String n(int i2) {
        int i3 = this.f11820g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final int a(int i2) {
        m(i2);
        return this.f11819f[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        a();
        c4.a(collection);
        if (!(collection instanceof d4)) {
            return super.addAll(collection);
        }
        d4 d4Var = (d4) collection;
        int i2 = d4Var.f11820g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11820g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            int[] iArr = this.f11819f;
            if (i4 > iArr.length) {
                this.f11819f = Arrays.copyOf(iArr, i4);
            }
            System.arraycopy(d4Var.f11819f, 0, this.f11819f, this.f11820g, d4Var.f11820g);
            this.f11820g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.i4
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final g4 zzap(int i2) {
        if (i2 >= this.f11820g) {
            return new d4(Arrays.copyOf(this.f11819f, i2), this.f11820g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d4)) {
            return super.equals(obj);
        }
        d4 d4Var = (d4) obj;
        if (this.f11820g != d4Var.f11820g) {
            return false;
        }
        int[] iArr = d4Var.f11819f;
        for (int i2 = 0; i2 < this.f11820g; i2++) {
            if (this.f11819f[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Integer.valueOf(a(i2));
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11820g; i3++) {
            i2 = (i2 * 31) + this.f11819f[i3];
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11820g; i2++) {
            if (obj.equals(Integer.valueOf(this.f11819f[i2]))) {
                int[] iArr = this.f11819f;
                System.arraycopy(iArr, i2 + 1, iArr, i2, (this.f11820g - i2) - 1);
                this.f11820g--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            int[] iArr = this.f11819f;
            System.arraycopy(iArr, i3, iArr, i2, this.f11820g - i3);
            this.f11820g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        m(i2);
        int[] iArr = this.f11819f;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11820g;
    }

    private d4(int[] iArr, int i2) {
        this.f11819f = iArr;
        this.f11820g = i2;
    }

    public final void b(int i2) {
        a(this.f11820g, i2);
    }

    private final void a(int i2, int i3) {
        int i4;
        a();
        if (i2 >= 0 && i2 <= (i4 = this.f11820g)) {
            int[] iArr = this.f11819f;
            if (i4 < iArr.length) {
                System.arraycopy(iArr, i2, iArr, i2 + 1, i4 - i2);
            } else {
                int[] iArr2 = new int[((i4 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                System.arraycopy(this.f11819f, i2, iArr2, i2 + 1, this.f11820g - i2);
                this.f11819f = iArr2;
            }
            this.f11819f[i2] = i3;
            this.f11820g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(n(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        m(i2);
        int[] iArr = this.f11819f;
        int i3 = iArr[i2];
        if (i2 < this.f11820g - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (r2 - i2) - 1);
        }
        this.f11820g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }
}
