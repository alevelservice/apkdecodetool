package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class n0 extends s<Double> implements i1<Double>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private double[] f11497f;

    /* renamed from: g, reason: collision with root package name */
    private int f11498g;

    static {
        new n0().W();
    }

    n0() {
        this(new double[10], 0);
    }

    private n0(double[] dArr, int i2) {
        this.f11497f = dArr;
        this.f11498g = i2;
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f11498g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    private final void a(int i2, double d2) {
        int i3;
        a();
        if (i2 < 0 || i2 > (i3 = this.f11498g)) {
            throw new IndexOutOfBoundsException(b(i2));
        }
        double[] dArr = this.f11497f;
        if (i3 < dArr.length) {
            System.arraycopy(dArr, i2, dArr, i2 + 1, i3 - i2);
        } else {
            double[] dArr2 = new double[((i3 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i2);
            System.arraycopy(this.f11497f, i2, dArr2, i2 + 1, this.f11498g - i2);
            this.f11497f = dArr2;
        }
        this.f11497f[i2] = d2;
        this.f11498g++;
        ((AbstractList) this).modCount++;
    }

    private final String b(int i2) {
        int i3 = this.f11498g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(double d2) {
        a(this.f11498g, d2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        a();
        f1.a(collection);
        if (!(collection instanceof n0)) {
            return super.addAll(collection);
        }
        n0 n0Var = (n0) collection;
        int i2 = n0Var.f11498g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11498g;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        double[] dArr = this.f11497f;
        if (i4 > dArr.length) {
            this.f11497f = Arrays.copyOf(dArr, i4);
        }
        System.arraycopy(n0Var.f11497f, 0, this.f11497f, this.f11498g, n0Var.f11498g);
        this.f11498g = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n0)) {
            return super.equals(obj);
        }
        n0 n0Var = (n0) obj;
        if (this.f11498g != n0Var.f11498g) {
            return false;
        }
        double[] dArr = n0Var.f11497f;
        for (int i2 = 0; i2 < this.f11498g; i2++) {
            if (this.f11497f[i2] != dArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Double.valueOf(this.f11497f[i2]);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11498g; i3++) {
            i2 = (i2 * 31) + f1.a(Double.doubleToLongBits(this.f11497f[i3]));
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1<Double> i(int i2) {
        if (i2 >= this.f11498g) {
            return new n0(Arrays.copyOf(this.f11497f, i2), this.f11498g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        double[] dArr = this.f11497f;
        double d2 = dArr[i2];
        int i3 = this.f11498g;
        if (i2 < i3 - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, i3 - i2);
        }
        this.f11498g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d2);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11498g; i2++) {
            if (obj.equals(Double.valueOf(this.f11497f[i2]))) {
                double[] dArr = this.f11497f;
                System.arraycopy(dArr, i2 + 1, dArr, i2, this.f11498g - i2);
                this.f11498g--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i2, int i3) {
        a();
        if (i3 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f11497f;
        System.arraycopy(dArr, i3, dArr, i2, this.f11498g - i3);
        this.f11498g -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        a(i2);
        double[] dArr = this.f11497f;
        double d2 = dArr[i2];
        dArr[i2] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11498g;
    }
}
