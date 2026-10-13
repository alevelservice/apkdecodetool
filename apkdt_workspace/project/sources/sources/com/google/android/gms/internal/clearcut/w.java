package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class w extends s<Boolean> implements i1<Boolean>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private boolean[] f11585f;

    /* renamed from: g, reason: collision with root package name */
    private int f11586g;

    static {
        new w().W();
    }

    w() {
        this(new boolean[10], 0);
    }

    private w(boolean[] zArr, int i2) {
        this.f11585f = zArr;
        this.f11586g = i2;
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f11586g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    private final void a(int i2, boolean z) {
        int i3;
        a();
        if (i2 < 0 || i2 > (i3 = this.f11586g)) {
            throw new IndexOutOfBoundsException(b(i2));
        }
        boolean[] zArr = this.f11585f;
        if (i3 < zArr.length) {
            System.arraycopy(zArr, i2, zArr, i2 + 1, i3 - i2);
        } else {
            boolean[] zArr2 = new boolean[((i3 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            System.arraycopy(this.f11585f, i2, zArr2, i2 + 1, this.f11586g - i2);
            this.f11585f = zArr2;
        }
        this.f11585f[i2] = z;
        this.f11586g++;
        ((AbstractList) this).modCount++;
    }

    private final String b(int i2) {
        int i3 = this.f11586g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(boolean z) {
        a(this.f11586g, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        a();
        f1.a(collection);
        if (!(collection instanceof w)) {
            return super.addAll(collection);
        }
        w wVar = (w) collection;
        int i2 = wVar.f11586g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11586g;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        boolean[] zArr = this.f11585f;
        if (i4 > zArr.length) {
            this.f11585f = Arrays.copyOf(zArr, i4);
        }
        System.arraycopy(wVar.f11585f, 0, this.f11585f, this.f11586g, wVar.f11586g);
        this.f11586g = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return super.equals(obj);
        }
        w wVar = (w) obj;
        if (this.f11586g != wVar.f11586g) {
            return false;
        }
        boolean[] zArr = wVar.f11585f;
        for (int i2 = 0; i2 < this.f11586g; i2++) {
            if (this.f11585f[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Boolean.valueOf(this.f11585f[i2]);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11586g; i3++) {
            i2 = (i2 * 31) + f1.a(this.f11585f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1<Boolean> i(int i2) {
        if (i2 >= this.f11586g) {
            return new w(Arrays.copyOf(this.f11585f, i2), this.f11586g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        boolean[] zArr = this.f11585f;
        boolean z = zArr[i2];
        int i3 = this.f11586g;
        if (i2 < i3 - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, i3 - i2);
        }
        this.f11586g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11586g; i2++) {
            if (obj.equals(Boolean.valueOf(this.f11585f[i2]))) {
                boolean[] zArr = this.f11585f;
                System.arraycopy(zArr, i2 + 1, zArr, i2, this.f11586g - i2);
                this.f11586g--;
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
        boolean[] zArr = this.f11585f;
        System.arraycopy(zArr, i3, zArr, i2, this.f11586g - i3);
        this.f11586g -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        a(i2);
        boolean[] zArr = this.f11585f;
        boolean z = zArr[i2];
        zArr[i2] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11586g;
    }
}
