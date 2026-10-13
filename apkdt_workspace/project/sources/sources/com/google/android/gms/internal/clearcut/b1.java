package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class b1 extends s<Float> implements i1<Float>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private float[] f11367f;

    /* renamed from: g, reason: collision with root package name */
    private int f11368g;

    static {
        new b1().W();
    }

    b1() {
        this(new float[10], 0);
    }

    private b1(float[] fArr, int i2) {
        this.f11367f = fArr;
        this.f11368g = i2;
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f11368g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    private final void a(int i2, float f2) {
        int i3;
        a();
        if (i2 < 0 || i2 > (i3 = this.f11368g)) {
            throw new IndexOutOfBoundsException(b(i2));
        }
        float[] fArr = this.f11367f;
        if (i3 < fArr.length) {
            System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
        } else {
            float[] fArr2 = new float[((i3 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i2);
            System.arraycopy(this.f11367f, i2, fArr2, i2 + 1, this.f11368g - i2);
            this.f11367f = fArr2;
        }
        this.f11367f[i2] = f2;
        this.f11368g++;
        ((AbstractList) this).modCount++;
    }

    private final String b(int i2) {
        int i3 = this.f11368g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(float f2) {
        a(this.f11368g, f2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        a();
        f1.a(collection);
        if (!(collection instanceof b1)) {
            return super.addAll(collection);
        }
        b1 b1Var = (b1) collection;
        int i2 = b1Var.f11368g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11368g;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        float[] fArr = this.f11367f;
        if (i4 > fArr.length) {
            this.f11367f = Arrays.copyOf(fArr, i4);
        }
        System.arraycopy(b1Var.f11367f, 0, this.f11367f, this.f11368g, b1Var.f11368g);
        this.f11368g = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b1)) {
            return super.equals(obj);
        }
        b1 b1Var = (b1) obj;
        if (this.f11368g != b1Var.f11368g) {
            return false;
        }
        float[] fArr = b1Var.f11367f;
        for (int i2 = 0; i2 < this.f11368g; i2++) {
            if (this.f11367f[i2] != fArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Float.valueOf(this.f11367f[i2]);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11368g; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(this.f11367f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1<Float> i(int i2) {
        if (i2 >= this.f11368g) {
            return new b1(Arrays.copyOf(this.f11367f, i2), this.f11368g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        float[] fArr = this.f11367f;
        float f2 = fArr[i2];
        int i3 = this.f11368g;
        if (i2 < i3 - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, i3 - i2);
        }
        this.f11368g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f2);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11368g; i2++) {
            if (obj.equals(Float.valueOf(this.f11367f[i2]))) {
                float[] fArr = this.f11367f;
                System.arraycopy(fArr, i2 + 1, fArr, i2, this.f11368g - i2);
                this.f11368g--;
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
        float[] fArr = this.f11367f;
        System.arraycopy(fArr, i3, fArr, i2, this.f11368g - i3);
        this.f11368g -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        a(i2);
        float[] fArr = this.f11367f;
        float f2 = fArr[i2];
        fArr[i2] = floatValue;
        return Float.valueOf(f2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11368g;
    }
}
