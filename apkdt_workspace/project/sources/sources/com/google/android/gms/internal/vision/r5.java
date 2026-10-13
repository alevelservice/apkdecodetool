package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class r5 extends c3<Long> implements z4<Long>, o6, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private long[] f12497f;

    /* renamed from: g, reason: collision with root package name */
    private int f12498g;

    static {
        new r5(new long[0], 0).U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r5() {
        this(new long[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f12498g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(long j2) {
        a();
        int i2 = this.f12498g;
        long[] jArr = this.f12497f;
        if (i2 == jArr.length) {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            this.f12497f = jArr2;
        }
        long[] jArr3 = this.f12497f;
        int i3 = this.f12498g;
        this.f12498g = i3 + 1;
        jArr3[i3] = j2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        long longValue = ((Long) obj).longValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12498g)) {
            long[] jArr = this.f12497f;
            if (i3 < jArr.length) {
                System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
            } else {
                long[] jArr2 = new long[((i3 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i2);
                System.arraycopy(this.f12497f, i2, jArr2, i2 + 1, this.f12498g - i2);
                this.f12497f = jArr2;
            }
            this.f12497f[i2] = longValue;
            this.f12498g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        a();
        t4.a(collection);
        if (!(collection instanceof r5)) {
            return super.addAll(collection);
        }
        r5 r5Var = (r5) collection;
        int i2 = r5Var.f12498g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12498g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            long[] jArr = this.f12497f;
            if (i4 > jArr.length) {
                this.f12497f = Arrays.copyOf(jArr, i4);
            }
            System.arraycopy(r5Var.f12497f, 0, this.f12497f, this.f12498g, r5Var.f12498g);
            this.f12498g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4<Long> c(int i2) {
        if (i2 >= this.f12498g) {
            return new r5(Arrays.copyOf(this.f12497f, i2), this.f12498g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r5)) {
            return super.equals(obj);
        }
        r5 r5Var = (r5) obj;
        if (this.f12498g != r5Var.f12498g) {
            return false;
        }
        long[] jArr = r5Var.f12497f;
        for (int i2 = 0; i2 < this.f12498g; i2++) {
            if (this.f12497f[i2] != jArr[i2]) {
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
        return this.f12497f[i2];
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12498g; i3++) {
            i2 = (i2 * 31) + t4.a(this.f12497f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12498g; i2++) {
            if (obj.equals(Long.valueOf(this.f12497f[i2]))) {
                long[] jArr = this.f12497f;
                System.arraycopy(jArr, i2 + 1, jArr, i2, (this.f12498g - i2) - 1);
                this.f12498g--;
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
            long[] jArr = this.f12497f;
            System.arraycopy(jArr, i3, jArr, i2, this.f12498g - i3);
            this.f12498g -= i3 - i2;
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
        long[] jArr = this.f12497f;
        long j2 = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12498g;
    }

    private r5(long[] jArr, int i2) {
        this.f12497f = jArr;
        this.f12498g = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        long[] jArr = this.f12497f;
        long j2 = jArr[i2];
        if (i2 < this.f12498g - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.f12498g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12498g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Long) obj).longValue());
        return true;
    }
}
