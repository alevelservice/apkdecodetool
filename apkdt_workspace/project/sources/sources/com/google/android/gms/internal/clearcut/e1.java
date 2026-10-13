package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class e1 extends s<Integer> implements i1<Integer>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private int[] f11412f;

    /* renamed from: g, reason: collision with root package name */
    private int f11413g;

    static {
        new e1().W();
    }

    e1() {
        this(new int[10], 0);
    }

    private e1(int[] iArr, int i2) {
        this.f11412f = iArr;
        this.f11413g = i2;
    }

    private final void a(int i2, int i3) {
        int i4;
        a();
        if (i2 < 0 || i2 > (i4 = this.f11413g)) {
            throw new IndexOutOfBoundsException(n(i2));
        }
        int[] iArr = this.f11412f;
        if (i4 < iArr.length) {
            System.arraycopy(iArr, i2, iArr, i2 + 1, i4 - i2);
        } else {
            int[] iArr2 = new int[((i4 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.f11412f, i2, iArr2, i2 + 1, this.f11413g - i2);
            this.f11412f = iArr2;
        }
        this.f11412f[i2] = i3;
        this.f11413g++;
        ((AbstractList) this).modCount++;
    }

    private final void m(int i2) {
        if (i2 < 0 || i2 >= this.f11413g) {
            throw new IndexOutOfBoundsException(n(i2));
        }
    }

    private final String n(int i2) {
        int i3 = this.f11413g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final int a(int i2) {
        m(i2);
        return this.f11412f[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        a();
        f1.a(collection);
        if (!(collection instanceof e1)) {
            return super.addAll(collection);
        }
        e1 e1Var = (e1) collection;
        int i2 = e1Var.f11413g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11413g;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        int[] iArr = this.f11412f;
        if (i4 > iArr.length) {
            this.f11412f = Arrays.copyOf(iArr, i4);
        }
        System.arraycopy(e1Var.f11412f, 0, this.f11412f, this.f11413g, e1Var.f11413g);
        this.f11413g = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void b(int i2) {
        a(this.f11413g, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e1)) {
            return super.equals(obj);
        }
        e1 e1Var = (e1) obj;
        if (this.f11413g != e1Var.f11413g) {
            return false;
        }
        int[] iArr = e1Var.f11412f;
        for (int i2 = 0; i2 < this.f11413g; i2++) {
            if (this.f11412f[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Integer.valueOf(a(i2));
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11413g; i3++) {
            i2 = (i2 * 31) + this.f11412f[i3];
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1<Integer> i(int i2) {
        if (i2 >= this.f11413g) {
            return new e1(Arrays.copyOf(this.f11412f, i2), this.f11413g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        m(i2);
        int[] iArr = this.f11412f;
        int i3 = iArr[i2];
        int i4 = this.f11413g;
        if (i2 < i4 - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, i4 - i2);
        }
        this.f11413g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11413g; i2++) {
            if (obj.equals(Integer.valueOf(this.f11412f[i2]))) {
                int[] iArr = this.f11412f;
                System.arraycopy(iArr, i2 + 1, iArr, i2, this.f11413g - i2);
                this.f11413g--;
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
        int[] iArr = this.f11412f;
        System.arraycopy(iArr, i3, iArr, i2, this.f11413g - i3);
        this.f11413g -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        m(i2);
        int[] iArr = this.f11412f;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11413g;
    }
}
