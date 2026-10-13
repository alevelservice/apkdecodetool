package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class k3 extends n2<Double> implements i4<Double>, v5, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private double[] f11943f;

    /* renamed from: g, reason: collision with root package name */
    private int f11944g;

    static {
        new k3(new double[0], 0).P();
    }

    k3() {
        this(new double[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f11944g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(double d2) {
        a(this.f11944g, d2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        a();
        c4.a(collection);
        if (!(collection instanceof k3)) {
            return super.addAll(collection);
        }
        k3 k3Var = (k3) collection;
        int i2 = k3Var.f11944g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11944g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            double[] dArr = this.f11943f;
            if (i4 > dArr.length) {
                this.f11943f = Arrays.copyOf(dArr, i4);
            }
            System.arraycopy(k3Var.f11943f, 0, this.f11943f, this.f11944g, k3Var.f11944g);
            this.f11944g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k3)) {
            return super.equals(obj);
        }
        k3 k3Var = (k3) obj;
        if (this.f11944g != k3Var.f11944g) {
            return false;
        }
        double[] dArr = k3Var.f11943f;
        for (int i2 = 0; i2 < this.f11944g; i2++) {
            if (Double.doubleToLongBits(this.f11943f[i2]) != Double.doubleToLongBits(dArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Double.valueOf(this.f11943f[i2]);
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11944g; i3++) {
            i2 = (i2 * 31) + c4.a(Double.doubleToLongBits(this.f11943f[i3]));
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11944g; i2++) {
            if (obj.equals(Double.valueOf(this.f11943f[i2]))) {
                double[] dArr = this.f11943f;
                System.arraycopy(dArr, i2 + 1, dArr, i2, (this.f11944g - i2) - 1);
                this.f11944g--;
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
            double[] dArr = this.f11943f;
            System.arraycopy(dArr, i3, dArr, i2, this.f11944g - i3);
            this.f11944g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        a(i2);
        double[] dArr = this.f11943f;
        double d2 = dArr[i2];
        dArr[i2] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11944g;
    }

    @Override // com.google.android.gms.internal.measurement.i4
    public final /* synthetic */ i4<Double> zzap(int i2) {
        if (i2 >= this.f11944g) {
            return new k3(Arrays.copyOf(this.f11943f, i2), this.f11944g);
        }
        throw new IllegalArgumentException();
    }

    private k3(double[] dArr, int i2) {
        this.f11943f = dArr;
        this.f11944g = i2;
    }

    private final void a(int i2, double d2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f11944g)) {
            double[] dArr = this.f11943f;
            if (i3 < dArr.length) {
                System.arraycopy(dArr, i2, dArr, i2 + 1, i3 - i2);
            } else {
                double[] dArr2 = new double[((i3 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i2);
                System.arraycopy(this.f11943f, i2, dArr2, i2 + 1, this.f11944g - i2);
                this.f11943f = dArr2;
            }
            this.f11943f[i2] = d2;
            this.f11944g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        double[] dArr = this.f11943f;
        double d2 = dArr[i2];
        if (i2 < this.f11944g - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, (r3 - i2) - 1);
        }
        this.f11944g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f11944g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
