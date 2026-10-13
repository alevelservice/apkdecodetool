package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class z81 extends n71<Float> implements l91<Float>, za1, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private float[] f10713f;

    /* renamed from: g, reason: collision with root package name */
    private int f10714g;

    static {
        new z81(new float[0], 0).T();
    }

    z81() {
        this(new float[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f10714g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(float f2) {
        a(this.f10714g, f2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        a();
        f91.a(collection);
        if (!(collection instanceof z81)) {
            return super.addAll(collection);
        }
        z81 z81Var = (z81) collection;
        int i2 = z81Var.f10714g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f10714g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            float[] fArr = this.f10713f;
            if (i4 > fArr.length) {
                this.f10713f = Arrays.copyOf(fArr, i4);
            }
            System.arraycopy(z81Var.f10713f, 0, this.f10713f, this.f10714g, z81Var.f10714g);
            this.f10714g = i4;
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
        if (!(obj instanceof z81)) {
            return super.equals(obj);
        }
        z81 z81Var = (z81) obj;
        if (this.f10714g != z81Var.f10714g) {
            return false;
        }
        float[] fArr = z81Var.f10713f;
        for (int i2 = 0; i2 < this.f10714g; i2++) {
            if (Float.floatToIntBits(this.f10713f[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.l91
    public final /* synthetic */ l91<Float> f(int i2) {
        if (i2 >= this.f10714g) {
            return new z81(Arrays.copyOf(this.f10713f, i2), this.f10714g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Float.valueOf(this.f10713f[i2]);
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f10714g; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(this.f10713f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f10714g; i2++) {
            if (obj.equals(Float.valueOf(this.f10713f[i2]))) {
                float[] fArr = this.f10713f;
                System.arraycopy(fArr, i2 + 1, fArr, i2, (this.f10714g - i2) - 1);
                this.f10714g--;
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
            float[] fArr = this.f10713f;
            System.arraycopy(fArr, i3, fArr, i2, this.f10714g - i3);
            this.f10714g -= i3 - i2;
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
        float[] fArr = this.f10713f;
        float f2 = fArr[i2];
        fArr[i2] = floatValue;
        return Float.valueOf(f2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10714g;
    }

    private z81(float[] fArr, int i2) {
        this.f10713f = fArr;
        this.f10714g = i2;
    }

    private final void a(int i2, float f2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f10714g)) {
            float[] fArr = this.f10713f;
            if (i3 < fArr.length) {
                System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
            } else {
                float[] fArr2 = new float[((i3 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i2);
                System.arraycopy(this.f10713f, i2, fArr2, i2 + 1, this.f10714g - i2);
                this.f10713f = fArr2;
            }
            this.f10713f[i2] = f2;
            this.f10714g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        float[] fArr = this.f10713f;
        float f2 = fArr[i2];
        if (i2 < this.f10714g - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (r2 - i2) - 1);
        }
        this.f10714g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f10714g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
