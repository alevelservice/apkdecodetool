package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class o4 extends c3<Float> implements z4<Float>, o6, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private float[] f12459f;

    /* renamed from: g, reason: collision with root package name */
    private int f12460g;

    static {
        new o4(new float[0], 0).U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o4() {
        this(new float[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f12460g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(float f2) {
        a();
        int i2 = this.f12460g;
        float[] fArr = this.f12459f;
        if (i2 == fArr.length) {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i2);
            this.f12459f = fArr2;
        }
        float[] fArr3 = this.f12459f;
        int i3 = this.f12460g;
        this.f12460g = i3 + 1;
        fArr3[i3] = f2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12460g)) {
            float[] fArr = this.f12459f;
            if (i3 < fArr.length) {
                System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
            } else {
                float[] fArr2 = new float[((i3 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i2);
                System.arraycopy(this.f12459f, i2, fArr2, i2 + 1, this.f12460g - i2);
                this.f12459f = fArr2;
            }
            this.f12459f[i2] = floatValue;
            this.f12460g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        a();
        t4.a(collection);
        if (!(collection instanceof o4)) {
            return super.addAll(collection);
        }
        o4 o4Var = (o4) collection;
        int i2 = o4Var.f12460g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12460g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            float[] fArr = this.f12459f;
            if (i4 > fArr.length) {
                this.f12459f = Arrays.copyOf(fArr, i4);
            }
            System.arraycopy(o4Var.f12459f, 0, this.f12459f, this.f12460g, o4Var.f12460g);
            this.f12460g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4<Float> c(int i2) {
        if (i2 >= this.f12460g) {
            return new o4(Arrays.copyOf(this.f12459f, i2), this.f12460g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o4)) {
            return super.equals(obj);
        }
        o4 o4Var = (o4) obj;
        if (this.f12460g != o4Var.f12460g) {
            return false;
        }
        float[] fArr = o4Var.f12459f;
        for (int i2 = 0; i2 < this.f12460g; i2++) {
            if (Float.floatToIntBits(this.f12459f[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Float.valueOf(this.f12459f[i2]);
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12460g; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(this.f12459f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12460g; i2++) {
            if (obj.equals(Float.valueOf(this.f12459f[i2]))) {
                float[] fArr = this.f12459f;
                System.arraycopy(fArr, i2 + 1, fArr, i2, (this.f12460g - i2) - 1);
                this.f12460g--;
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
            float[] fArr = this.f12459f;
            System.arraycopy(fArr, i3, fArr, i2, this.f12460g - i3);
            this.f12460g -= i3 - i2;
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
        float[] fArr = this.f12459f;
        float f2 = fArr[i2];
        fArr[i2] = floatValue;
        return Float.valueOf(f2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12460g;
    }

    private o4(float[] fArr, int i2) {
        this.f12459f = fArr;
        this.f12460g = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        float[] fArr = this.f12459f;
        float f2 = fArr[i2];
        if (i2 < this.f12460g - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (r2 - i2) - 1);
        }
        this.f12460g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12460g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Float) obj).floatValue());
        return true;
    }
}
