package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class b4 extends c3<Double> implements z4<Double>, o6, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private double[] f12309f;

    /* renamed from: g, reason: collision with root package name */
    private int f12310g;

    static {
        new b4(new double[0], 0).U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b4() {
        this(new double[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f12310g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(double d2) {
        a();
        int i2 = this.f12310g;
        double[] dArr = this.f12309f;
        if (i2 == dArr.length) {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i2);
            this.f12309f = dArr2;
        }
        double[] dArr3 = this.f12309f;
        int i3 = this.f12310g;
        this.f12310g = i3 + 1;
        dArr3[i3] = d2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12310g)) {
            double[] dArr = this.f12309f;
            if (i3 < dArr.length) {
                System.arraycopy(dArr, i2, dArr, i2 + 1, i3 - i2);
            } else {
                double[] dArr2 = new double[((i3 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i2);
                System.arraycopy(this.f12309f, i2, dArr2, i2 + 1, this.f12310g - i2);
                this.f12309f = dArr2;
            }
            this.f12309f[i2] = doubleValue;
            this.f12310g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        a();
        t4.a(collection);
        if (!(collection instanceof b4)) {
            return super.addAll(collection);
        }
        b4 b4Var = (b4) collection;
        int i2 = b4Var.f12310g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12310g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            double[] dArr = this.f12309f;
            if (i4 > dArr.length) {
                this.f12309f = Arrays.copyOf(dArr, i4);
            }
            System.arraycopy(b4Var.f12309f, 0, this.f12309f, this.f12310g, b4Var.f12310g);
            this.f12310g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4<Double> c(int i2) {
        if (i2 >= this.f12310g) {
            return new b4(Arrays.copyOf(this.f12309f, i2), this.f12310g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b4)) {
            return super.equals(obj);
        }
        b4 b4Var = (b4) obj;
        if (this.f12310g != b4Var.f12310g) {
            return false;
        }
        double[] dArr = b4Var.f12309f;
        for (int i2 = 0; i2 < this.f12310g; i2++) {
            if (Double.doubleToLongBits(this.f12309f[i2]) != Double.doubleToLongBits(dArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Double.valueOf(this.f12309f[i2]);
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12310g; i3++) {
            i2 = (i2 * 31) + t4.a(Double.doubleToLongBits(this.f12309f[i3]));
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12310g; i2++) {
            if (obj.equals(Double.valueOf(this.f12309f[i2]))) {
                double[] dArr = this.f12309f;
                System.arraycopy(dArr, i2 + 1, dArr, i2, (this.f12310g - i2) - 1);
                this.f12310g--;
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
            double[] dArr = this.f12309f;
            System.arraycopy(dArr, i3, dArr, i2, this.f12310g - i3);
            this.f12310g -= i3 - i2;
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
        double[] dArr = this.f12309f;
        double d2 = dArr[i2];
        dArr[i2] = doubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12310g;
    }

    private b4(double[] dArr, int i2) {
        this.f12309f = dArr;
        this.f12310g = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        double[] dArr = this.f12309f;
        double d2 = dArr[i2];
        if (i2 < this.f12310g - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, (r3 - i2) - 1);
        }
        this.f12310g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12310g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Double) obj).doubleValue());
        return true;
    }
}
