package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class r2 extends n2<Boolean> implements i4<Boolean>, v5, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private boolean[] f12065f;

    /* renamed from: g, reason: collision with root package name */
    private int f12066g;

    static {
        new r2(new boolean[0], 0).P();
    }

    r2() {
        this(new boolean[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f12066g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(boolean z) {
        a(this.f12066g, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        a();
        c4.a(collection);
        if (!(collection instanceof r2)) {
            return super.addAll(collection);
        }
        r2 r2Var = (r2) collection;
        int i2 = r2Var.f12066g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12066g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            boolean[] zArr = this.f12065f;
            if (i4 > zArr.length) {
                this.f12065f = Arrays.copyOf(zArr, i4);
            }
            System.arraycopy(r2Var.f12065f, 0, this.f12065f, this.f12066g, r2Var.f12066g);
            this.f12066g = i4;
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
        if (!(obj instanceof r2)) {
            return super.equals(obj);
        }
        r2 r2Var = (r2) obj;
        if (this.f12066g != r2Var.f12066g) {
            return false;
        }
        boolean[] zArr = r2Var.f12065f;
        for (int i2 = 0; i2 < this.f12066g; i2++) {
            if (this.f12065f[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Boolean.valueOf(this.f12065f[i2]);
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12066g; i3++) {
            i2 = (i2 * 31) + c4.a(this.f12065f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12066g; i2++) {
            if (obj.equals(Boolean.valueOf(this.f12065f[i2]))) {
                boolean[] zArr = this.f12065f;
                System.arraycopy(zArr, i2 + 1, zArr, i2, (this.f12066g - i2) - 1);
                this.f12066g--;
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
            boolean[] zArr = this.f12065f;
            System.arraycopy(zArr, i3, zArr, i2, this.f12066g - i3);
            this.f12066g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        a(i2);
        boolean[] zArr = this.f12065f;
        boolean z = zArr[i2];
        zArr[i2] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12066g;
    }

    @Override // com.google.android.gms.internal.measurement.i4
    public final /* synthetic */ i4<Boolean> zzap(int i2) {
        if (i2 >= this.f12066g) {
            return new r2(Arrays.copyOf(this.f12065f, i2), this.f12066g);
        }
        throw new IllegalArgumentException();
    }

    private r2(boolean[] zArr, int i2) {
        this.f12065f = zArr;
        this.f12066g = i2;
    }

    private final void a(int i2, boolean z) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12066g)) {
            boolean[] zArr = this.f12065f;
            if (i3 < zArr.length) {
                System.arraycopy(zArr, i2, zArr, i2 + 1, i3 - i2);
            } else {
                boolean[] zArr2 = new boolean[((i3 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i2);
                System.arraycopy(this.f12065f, i2, zArr2, i2 + 1, this.f12066g - i2);
                this.f12065f = zArr2;
            }
            this.f12065f[i2] = z;
            this.f12066g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        boolean[] zArr = this.f12065f;
        boolean z = zArr[i2];
        if (i2 < this.f12066g - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, (r2 - i2) - 1);
        }
        this.f12066g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12066g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
