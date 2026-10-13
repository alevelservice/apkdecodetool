package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class x3 extends n2<Float> implements i4<Float>, v5, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private float[] f12187f;

    /* renamed from: g, reason: collision with root package name */
    private int f12188g;

    static {
        new x3(new float[0], 0).P();
    }

    x3() {
        this(new float[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f12188g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(float f2) {
        a(this.f12188g, f2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        a();
        c4.a(collection);
        if (!(collection instanceof x3)) {
            return super.addAll(collection);
        }
        x3 x3Var = (x3) collection;
        int i2 = x3Var.f12188g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12188g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            float[] fArr = this.f12187f;
            if (i4 > fArr.length) {
                this.f12187f = Arrays.copyOf(fArr, i4);
            }
            System.arraycopy(x3Var.f12187f, 0, this.f12187f, this.f12188g, x3Var.f12188g);
            this.f12188g = i4;
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
        if (!(obj instanceof x3)) {
            return super.equals(obj);
        }
        x3 x3Var = (x3) obj;
        if (this.f12188g != x3Var.f12188g) {
            return false;
        }
        float[] fArr = x3Var.f12187f;
        for (int i2 = 0; i2 < this.f12188g; i2++) {
            if (Float.floatToIntBits(this.f12187f[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Float.valueOf(this.f12187f[i2]);
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12188g; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(this.f12187f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12188g; i2++) {
            if (obj.equals(Float.valueOf(this.f12187f[i2]))) {
                float[] fArr = this.f12187f;
                System.arraycopy(fArr, i2 + 1, fArr, i2, (this.f12188g - i2) - 1);
                this.f12188g--;
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
            float[] fArr = this.f12187f;
            System.arraycopy(fArr, i3, fArr, i2, this.f12188g - i3);
            this.f12188g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        a(i2);
        float[] fArr = this.f12187f;
        float f2 = fArr[i2];
        fArr[i2] = floatValue;
        return Float.valueOf(f2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12188g;
    }

    @Override // com.google.android.gms.internal.measurement.i4
    public final /* synthetic */ i4<Float> zzap(int i2) {
        if (i2 >= this.f12188g) {
            return new x3(Arrays.copyOf(this.f12187f, i2), this.f12188g);
        }
        throw new IllegalArgumentException();
    }

    private x3(float[] fArr, int i2) {
        this.f12187f = fArr;
        this.f12188g = i2;
    }

    private final void a(int i2, float f2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12188g)) {
            float[] fArr = this.f12187f;
            if (i3 < fArr.length) {
                System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
            } else {
                float[] fArr2 = new float[((i3 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i2);
                System.arraycopy(this.f12187f, i2, fArr2, i2 + 1, this.f12188g - i2);
                this.f12187f = fArr2;
            }
            this.f12187f[i2] = f2;
            this.f12188g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        float[] fArr = this.f12187f;
        float f2 = fArr[i2];
        if (i2 < this.f12188g - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (r2 - i2) - 1);
        }
        this.f12188g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12188g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
