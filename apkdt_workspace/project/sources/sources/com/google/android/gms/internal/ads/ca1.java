package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class ca1 extends n71<Long> implements l91<Long>, za1, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private long[] f5964f;

    /* renamed from: g, reason: collision with root package name */
    private int f5965g;

    static {
        new ca1(new long[0], 0).T();
    }

    ca1() {
        this(new long[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f5965g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(long j2) {
        a(this.f5965g, j2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        a();
        f91.a(collection);
        if (!(collection instanceof ca1)) {
            return super.addAll(collection);
        }
        ca1 ca1Var = (ca1) collection;
        int i2 = ca1Var.f5965g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f5965g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            long[] jArr = this.f5964f;
            if (i4 > jArr.length) {
                this.f5964f = Arrays.copyOf(jArr, i4);
            }
            System.arraycopy(ca1Var.f5964f, 0, this.f5964f, this.f5965g, ca1Var.f5965g);
            this.f5965g = i4;
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
        if (!(obj instanceof ca1)) {
            return super.equals(obj);
        }
        ca1 ca1Var = (ca1) obj;
        if (this.f5965g != ca1Var.f5965g) {
            return false;
        }
        long[] jArr = ca1Var.f5964f;
        for (int i2 = 0; i2 < this.f5965g; i2++) {
            if (this.f5964f[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.l91
    public final /* synthetic */ l91<Long> f(int i2) {
        if (i2 >= this.f5965g) {
            return new ca1(Arrays.copyOf(this.f5964f, i2), this.f5965g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(getLong(i2));
    }

    public final long getLong(int i2) {
        a(i2);
        return this.f5964f[i2];
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f5965g; i3++) {
            i2 = (i2 * 31) + f91.a(this.f5964f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f5965g; i2++) {
            if (obj.equals(Long.valueOf(this.f5964f[i2]))) {
                long[] jArr = this.f5964f;
                System.arraycopy(jArr, i2 + 1, jArr, i2, (this.f5965g - i2) - 1);
                this.f5965g--;
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
            long[] jArr = this.f5964f;
            System.arraycopy(jArr, i3, jArr, i2, this.f5965g - i3);
            this.f5965g -= i3 - i2;
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
        long[] jArr = this.f5964f;
        long j2 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5965g;
    }

    private ca1(long[] jArr, int i2) {
        this.f5964f = jArr;
        this.f5965g = i2;
    }

    private final void a(int i2, long j2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f5965g)) {
            long[] jArr = this.f5964f;
            if (i3 < jArr.length) {
                System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
            } else {
                long[] jArr2 = new long[((i3 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i2);
                System.arraycopy(this.f5964f, i2, jArr2, i2 + 1, this.f5965g - i2);
                this.f5964f = jArr2;
            }
            this.f5964f[i2] = j2;
            this.f5965g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        long[] jArr = this.f5964f;
        long j2 = jArr[i2];
        if (i2 < this.f5965g - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.f5965g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f5965g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
