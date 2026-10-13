package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class i3 extends c3<Boolean> implements z4<Boolean>, o6, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private boolean[] f12377f;

    /* renamed from: g, reason: collision with root package name */
    private int f12378g;

    static {
        new i3(new boolean[0], 0).U();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i3() {
        this(new boolean[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f12378g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(boolean z) {
        a();
        int i2 = this.f12378g;
        boolean[] zArr = this.f12377f;
        if (i2 == zArr.length) {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            this.f12377f = zArr2;
        }
        boolean[] zArr3 = this.f12377f;
        int i3 = this.f12378g;
        this.f12378g = i3 + 1;
        zArr3[i3] = z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12378g)) {
            boolean[] zArr = this.f12377f;
            if (i3 < zArr.length) {
                System.arraycopy(zArr, i2, zArr, i2 + 1, i3 - i2);
            } else {
                boolean[] zArr2 = new boolean[((i3 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i2);
                System.arraycopy(this.f12377f, i2, zArr2, i2 + 1, this.f12378g - i2);
                this.f12377f = zArr2;
            }
            this.f12377f[i2] = booleanValue;
            this.f12378g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        a();
        t4.a(collection);
        if (!(collection instanceof i3)) {
            return super.addAll(collection);
        }
        i3 i3Var = (i3) collection;
        int i2 = i3Var.f12378g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f12378g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            boolean[] zArr = this.f12377f;
            if (i4 > zArr.length) {
                this.f12377f = Arrays.copyOf(zArr, i4);
            }
            System.arraycopy(i3Var.f12377f, 0, this.f12377f, this.f12378g, i3Var.f12378g);
            this.f12378g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4<Boolean> c(int i2) {
        if (i2 >= this.f12378g) {
            return new i3(Arrays.copyOf(this.f12377f, i2), this.f12378g);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i3)) {
            return super.equals(obj);
        }
        i3 i3Var = (i3) obj;
        if (this.f12378g != i3Var.f12378g) {
            return false;
        }
        boolean[] zArr = i3Var.f12377f;
        for (int i2 = 0; i2 < this.f12378g; i2++) {
            if (this.f12377f[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Boolean.valueOf(this.f12377f[i2]);
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f12378g; i3++) {
            i2 = (i2 * 31) + t4.a(this.f12377f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f12378g; i2++) {
            if (obj.equals(Boolean.valueOf(this.f12377f[i2]))) {
                boolean[] zArr = this.f12377f;
                System.arraycopy(zArr, i2 + 1, zArr, i2, (this.f12378g - i2) - 1);
                this.f12378g--;
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
            boolean[] zArr = this.f12377f;
            System.arraycopy(zArr, i3, zArr, i2, this.f12378g - i3);
            this.f12378g -= i3 - i2;
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
        boolean[] zArr = this.f12377f;
        boolean z = zArr[i2];
        zArr[i2] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12378g;
    }

    private i3(boolean[] zArr, int i2) {
        this.f12377f = zArr;
        this.f12378g = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        boolean[] zArr = this.f12377f;
        boolean z = zArr[i2];
        if (i2 < this.f12378g - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, (r2 - i2) - 1);
        }
        this.f12378g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12378g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        a(((Boolean) obj).booleanValue());
        return true;
    }
}
