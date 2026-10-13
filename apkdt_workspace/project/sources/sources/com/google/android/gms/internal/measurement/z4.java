package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z4 extends n2<Long> implements j4, v5, RandomAccess {

    /* renamed from: h, reason: collision with root package name */
    private static final z4 f12234h;

    /* renamed from: f, reason: collision with root package name */
    private long[] f12235f;

    /* renamed from: g, reason: collision with root package name */
    private int f12236g;

    static {
        z4 z4Var = new z4(new long[0], 0);
        f12234h = z4Var;
        z4Var.P();
    }

    z4() {
        this(new long[10], 0);
    }

    private final void a(int i2, long j2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12236g)) {
            long[] jArr = this.f12235f;
            if (i3 < jArr.length) {
                System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
            } else {
                long[] jArr2 = new long[((i3 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i2);
                System.arraycopy(this.f12235f, i2, jArr2, i2 + 1, this.f12236g - i2);
                this.f12235f = jArr2;
            }
            this.f12235f[i2] = j2;
            this.f12236g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    public static z4 b() {
        return f12234h;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        a();
        c4.a(collection);
        if (!(collection instanceof z4)) {
            return super.addAll(collection);
        }
        z4 z4Var = (z4) collection;
        int i2 = z4Var.f12236g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12236g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            long[] jArr = this.f12235f;
            if (i4 > jArr.length) {
                this.f12235f = Arrays.copyOf(jArr, i4);
            }
            System.arraycopy(z4Var.f12235f, 0, this.f12235f, this.f12236g, z4Var.f12236g);
            this.f12236g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.measurement.i4
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final j4 zzap(int i2) {
        if (i2 >= this.f12236g) {
            return new z4(Arrays.copyOf(this.f12235f, i2), this.f12236g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z4)) {
            return super.equals(obj);
        }
        z4 z4Var = (z4) obj;
        if (this.f12236g != z4Var.f12236g) {
            return false;
        }
        long[] jArr = z4Var.f12235f;
        for (int i2 = 0; i2 < this.f12236g; i2++) {
            if (this.f12235f[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(getLong(i2));
    }

    @Override // com.google.android.gms.internal.measurement.j4
    public final long getLong(int i2) {
        a(i2);
        return this.f12235f[i2];
    }

    @Override // com.google.android.gms.internal.measurement.j4
    public final void h(long j2) {
        a(this.f12236g, j2);
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12236g; i3++) {
            i2 = (i2 * 31) + c4.a(this.f12235f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.n2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12236g; i2++) {
            if (obj.equals(Long.valueOf(this.f12235f[i2]))) {
                long[] jArr = this.f12235f;
                System.arraycopy(jArr, i2 + 1, jArr, i2, (this.f12236g - i2) - 1);
                this.f12236g--;
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
            long[] jArr = this.f12235f;
            System.arraycopy(jArr, i3, jArr, i2, this.f12236g - i3);
            this.f12236g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        a(i2);
        long[] jArr = this.f12235f;
        long j2 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12236g;
    }

    private z4(long[] jArr, int i2) {
        this.f12235f = jArr;
        this.f12236g = i2;
    }

    private final String b(int i2) {
        int i3 = this.f12236g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        long[] jArr = this.f12235f;
        long j2 = jArr[i2];
        if (i2 < this.f12236g - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.f12236g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12236g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
