package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class x1 extends s<Long> implements i1<Long>, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private long[] f11597f;

    /* renamed from: g, reason: collision with root package name */
    private int f11598g;

    static {
        new x1().W();
    }

    x1() {
        this(new long[10], 0);
    }

    private x1(long[] jArr, int i2) {
        this.f11597f = jArr;
        this.f11598g = i2;
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f11598g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    private final void a(int i2, long j2) {
        int i3;
        a();
        if (i2 < 0 || i2 > (i3 = this.f11598g)) {
            throw new IndexOutOfBoundsException(b(i2));
        }
        long[] jArr = this.f11597f;
        if (i3 < jArr.length) {
            System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
        } else {
            long[] jArr2 = new long[((i3 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            System.arraycopy(this.f11597f, i2, jArr2, i2 + 1, this.f11598g - i2);
            this.f11597f = jArr2;
        }
        this.f11597f[i2] = j2;
        this.f11598g++;
        ((AbstractList) this).modCount++;
    }

    private final String b(int i2) {
        int i3 = this.f11598g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(long j2) {
        a(this.f11598g, j2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        a();
        f1.a(collection);
        if (!(collection instanceof x1)) {
            return super.addAll(collection);
        }
        x1 x1Var = (x1) collection;
        int i2 = x1Var.f11598g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f11598g;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        long[] jArr = this.f11597f;
        if (i4 > jArr.length) {
            this.f11597f = Arrays.copyOf(jArr, i4);
        }
        System.arraycopy(x1Var.f11597f, 0, this.f11597f, this.f11598g, x1Var.f11598g);
        this.f11598g = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x1)) {
            return super.equals(obj);
        }
        x1 x1Var = (x1) obj;
        if (this.f11598g != x1Var.f11598g) {
            return false;
        }
        long[] jArr = x1Var.f11597f;
        for (int i2 = 0; i2 < this.f11598g; i2++) {
            if (this.f11597f[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(getLong(i2));
    }

    public final long getLong(int i2) {
        a(i2);
        return this.f11597f[i2];
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f11598g; i3++) {
            i2 = (i2 * 31) + f1.a(this.f11597f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1<Long> i(int i2) {
        if (i2 >= this.f11598g) {
            return new x1(Arrays.copyOf(this.f11597f, i2), this.f11598g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        long[] jArr = this.f11597f;
        long j2 = jArr[i2];
        int i3 = this.f11598g;
        if (i2 < i3 - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, i3 - i2);
        }
        this.f11598g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    @Override // com.google.android.gms.internal.clearcut.s, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f11598g; i2++) {
            if (obj.equals(Long.valueOf(this.f11597f[i2]))) {
                long[] jArr = this.f11597f;
                System.arraycopy(jArr, i2 + 1, jArr, i2, this.f11598g - i2);
                this.f11598g--;
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
        long[] jArr = this.f11597f;
        System.arraycopy(jArr, i3, jArr, i2, this.f11598g - i3);
        this.f11598g -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        a(i2);
        long[] jArr = this.f11597f;
        long j2 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11598g;
    }
}
