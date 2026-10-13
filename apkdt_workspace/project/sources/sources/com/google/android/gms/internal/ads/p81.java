package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class p81 extends n71<Double> implements l91<Double>, za1, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private double[] f8663f;

    /* renamed from: g, reason: collision with root package name */
    private int f8664g;

    static {
        new p81(new double[0], 0).T();
    }

    p81() {
        this(new double[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f8664g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(double d2) {
        a(this.f8664g, d2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        a();
        f91.a(collection);
        if (!(collection instanceof p81)) {
            return super.addAll(collection);
        }
        p81 p81Var = (p81) collection;
        int i2 = p81Var.f8664g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f8664g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            double[] dArr = this.f8663f;
            if (i4 > dArr.length) {
                this.f8663f = Arrays.copyOf(dArr, i4);
            }
            System.arraycopy(p81Var.f8663f, 0, this.f8663f, this.f8664g, p81Var.f8664g);
            this.f8664g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p81)) {
            return super.equals(obj);
        }
        p81 p81Var = (p81) obj;
        if (this.f8664g != p81Var.f8664g) {
            return false;
        }
        double[] dArr = p81Var.f8663f;
        for (int i2 = 0; i2 < this.f8664g; i2++) {
            if (Double.doubleToLongBits(this.f8663f[i2]) != Double.doubleToLongBits(dArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.l91
    public final /* synthetic */ l91<Double> f(int i2) {
        if (i2 >= this.f8664g) {
            return new p81(Arrays.copyOf(this.f8663f, i2), this.f8664g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Double.valueOf(this.f8663f[i2]);
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f8664g; i3++) {
            i2 = (i2 * 31) + f91.a(Double.doubleToLongBits(this.f8663f[i3]));
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f8664g; i2++) {
            if (obj.equals(Double.valueOf(this.f8663f[i2]))) {
                double[] dArr = this.f8663f;
                System.arraycopy(dArr, i2 + 1, dArr, i2, (this.f8664g - i2) - 1);
                this.f8664g--;
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
            double[] dArr = this.f8663f;
            System.arraycopy(dArr, i3, dArr, i2, this.f8664g - i3);
            this.f8664g -= i3 - i2;
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
        double[] dArr = this.f8663f;
        double d2 = dArr[i2];
        dArr[i2] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8664g;
    }

    private p81(double[] dArr, int i2) {
        this.f8663f = dArr;
        this.f8664g = i2;
    }

    private final void a(int i2, double d2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f8664g)) {
            double[] dArr = this.f8663f;
            if (i3 < dArr.length) {
                System.arraycopy(dArr, i2, dArr, i2 + 1, i3 - i2);
            } else {
                double[] dArr2 = new double[((i3 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i2);
                System.arraycopy(this.f8663f, i2, dArr2, i2 + 1, this.f8664g - i2);
                this.f8663f = dArr2;
            }
            this.f8663f[i2] = d2;
            this.f8664g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        double[] dArr = this.f8663f;
        double d2 = dArr[i2];
        if (i2 < this.f8664g - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, (r3 - i2) - 1);
        }
        this.f8664g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f8664g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
