package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class r71 extends n71<Boolean> implements l91<Boolean>, za1, RandomAccess {

    /* renamed from: f, reason: collision with root package name */
    private boolean[] f9052f;

    /* renamed from: g, reason: collision with root package name */
    private int f9053g;

    static {
        new r71(new boolean[0], 0).T();
    }

    r71() {
        this(new boolean[10], 0);
    }

    private final String b(int i2) {
        int i3 = this.f9053g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final void a(boolean z) {
        a(this.f9053g, z);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        a();
        f91.a(collection);
        if (!(collection instanceof r71)) {
            return super.addAll(collection);
        }
        r71 r71Var = (r71) collection;
        int i2 = r71Var.f9053g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f9053g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            boolean[] zArr = this.f9052f;
            if (i4 > zArr.length) {
                this.f9052f = Arrays.copyOf(zArr, i4);
            }
            System.arraycopy(r71Var.f9052f, 0, this.f9052f, this.f9053g, r71Var.f9053g);
            this.f9053g = i4;
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
        if (!(obj instanceof r71)) {
            return super.equals(obj);
        }
        r71 r71Var = (r71) obj;
        if (this.f9053g != r71Var.f9053g) {
            return false;
        }
        boolean[] zArr = r71Var.f9052f;
        for (int i2 = 0; i2 < this.f9053g; i2++) {
            if (this.f9052f[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.l91
    public final /* synthetic */ l91<Boolean> f(int i2) {
        if (i2 >= this.f9053g) {
            return new r71(Arrays.copyOf(this.f9052f, i2), this.f9053g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        a(i2);
        return Boolean.valueOf(this.f9052f[i2]);
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f9053g; i3++) {
            i2 = (i2 * 31) + f91.a(this.f9052f[i3]);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f9053g; i2++) {
            if (obj.equals(Boolean.valueOf(this.f9052f[i2]))) {
                boolean[] zArr = this.f9052f;
                System.arraycopy(zArr, i2 + 1, zArr, i2, (this.f9053g - i2) - 1);
                this.f9053g--;
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
            boolean[] zArr = this.f9052f;
            System.arraycopy(zArr, i3, zArr, i2, this.f9053g - i3);
            this.f9053g -= i3 - i2;
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
        boolean[] zArr = this.f9052f;
        boolean z = zArr[i2];
        zArr[i2] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9053g;
    }

    private r71(boolean[] zArr, int i2) {
        this.f9052f = zArr;
        this.f9053g = i2;
    }

    private final void a(int i2, boolean z) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f9053g)) {
            boolean[] zArr = this.f9052f;
            if (i3 < zArr.length) {
                System.arraycopy(zArr, i2, zArr, i2 + 1, i3 - i2);
            } else {
                boolean[] zArr2 = new boolean[((i3 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i2);
                System.arraycopy(this.f9052f, i2, zArr2, i2 + 1, this.f9053g - i2);
                this.f9052f = zArr2;
            }
            this.f9052f[i2] = z;
            this.f9053g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        a(i2);
        boolean[] zArr = this.f9052f;
        boolean z = zArr[i2];
        if (i2 < this.f9053g - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, (r2 - i2) - 1);
        }
        this.f9053g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f9053g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }
}
