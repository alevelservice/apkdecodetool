package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class u4 extends c3<Integer> implements z4<Integer>, o6, RandomAccess {

    /* renamed from: h, reason: collision with root package name */
    private static final u4 f12544h;

    /* renamed from: f, reason: collision with root package name */
    private int[] f12545f;

    /* renamed from: g, reason: collision with root package name */
    private int f12546g;

    static {
        u4 u4Var = new u4(new int[0], 0);
        f12544h = u4Var;
        u4Var.U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u4() {
        this(new int[10], 0);
    }

    public static u4 b() {
        return f12544h;
    }

    private final void m(int i2) {
        if (i2 < 0 || i2 >= this.f12546g) {
            throw new IndexOutOfBoundsException(n(i2));
        }
    }

    private final String n(int i2) {
        int i3 = this.f12546g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final int a(int i2) {
        m(i2);
        return this.f12545f[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        int intValue = ((Integer) obj).intValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12546g)) {
            int[] iArr = this.f12545f;
            if (i3 < iArr.length) {
                System.arraycopy(iArr, i2, iArr, i2 + 1, i3 - i2);
            } else {
                int[] iArr2 = new int[((i3 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                System.arraycopy(this.f12545f, i2, iArr2, i2 + 1, this.f12546g - i2);
                this.f12545f = iArr2;
            }
            this.f12545f[i2] = intValue;
            this.f12546g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(n(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        a();
        t4.a(collection);
        if (!(collection instanceof u4)) {
            return super.addAll(collection);
        }
        u4 u4Var = (u4) collection;
        int i2 = u4Var.f12546g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12546g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            int[] iArr = this.f12545f;
            if (i4 > iArr.length) {
                this.f12545f = Arrays.copyOf(iArr, i4);
            }
            System.arraycopy(u4Var.f12545f, 0, this.f12545f, this.f12546g, u4Var.f12546g);
            this.f12546g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4<Integer> c(int i2) {
        if (i2 >= this.f12546g) {
            return new u4(Arrays.copyOf(this.f12545f, i2), this.f12546g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u4)) {
            return super.equals(obj);
        }
        u4 u4Var = (u4) obj;
        if (this.f12546g != u4Var.f12546g) {
            return false;
        }
        int[] iArr = u4Var.f12545f;
        for (int i2 = 0; i2 < this.f12546g; i2++) {
            if (this.f12545f[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Integer.valueOf(a(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12546g; i3++) {
            i2 = (i2 * 31) + this.f12545f[i3];
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12546g; i2++) {
            if (obj.equals(Integer.valueOf(this.f12545f[i2]))) {
                int[] iArr = this.f12545f;
                System.arraycopy(iArr, i2 + 1, iArr, i2, (this.f12546g - i2) - 1);
                this.f12546g--;
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
            int[] iArr = this.f12545f;
            System.arraycopy(iArr, i3, iArr, i2, this.f12546g - i3);
            this.f12546g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        m(i2);
        int[] iArr = this.f12545f;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12546g;
    }

    private u4(int[] iArr, int i2) {
        this.f12545f = iArr;
        this.f12546g = i2;
    }

    public final void b(int i2) {
        a();
        int i3 = this.f12546g;
        int[] iArr = this.f12545f;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.f12545f = iArr2;
        }
        int[] iArr3 = this.f12545f;
        int i4 = this.f12546g;
        this.f12546g = i4 + 1;
        iArr3[i4] = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        m(i2);
        int[] iArr = this.f12545f;
        int i3 = iArr[i2];
        if (i2 < this.f12546g - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (r2 - i2) - 1);
        }
        this.f12546g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        b(((Integer) obj).intValue());
        return true;
    }
}
