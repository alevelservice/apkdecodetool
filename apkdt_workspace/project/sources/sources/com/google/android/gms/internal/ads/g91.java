package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class g91 extends n71<Integer> implements j91, za1, RandomAccess {

    /* renamed from: h, reason: collision with root package name */
    private static final g91 f6830h;

    /* renamed from: f, reason: collision with root package name */
    private int[] f6831f;

    /* renamed from: g, reason: collision with root package name */
    private int f6832g;

    static {
        g91 g91Var = new g91(new int[0], 0);
        f6830h = g91Var;
        g91Var.T();
    }

    g91() {
        this(new int[10], 0);
    }

    public static g91 b() {
        return f6830h;
    }

    private final String m(int i2) {
        int i3 = this.f6832g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    public final int a(int i2) {
        b(i2);
        return this.f6831f[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        a(i2, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        a();
        f91.a(collection);
        if (!(collection instanceof g91)) {
            return super.addAll(collection);
        }
        g91 g91Var = (g91) collection;
        int i2 = g91Var.f6832g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.f6832g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            int[] iArr = this.f6831f;
            if (i4 > iArr.length) {
                this.f6831f = Arrays.copyOf(iArr, i4);
            }
            System.arraycopy(g91Var.f6831f, 0, this.f6831f, this.f6832g, g91Var.f6832g);
            this.f6832g = i4;
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
        if (!(obj instanceof g91)) {
            return super.equals(obj);
        }
        g91 g91Var = (g91) obj;
        if (this.f6832g != g91Var.f6832g) {
            return false;
        }
        int[] iArr = g91Var.f6831f;
        for (int i2 = 0; i2 < this.f6832g; i2++) {
            if (this.f6831f[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.l91
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final j91 f(int i2) {
        if (i2 >= this.f6832g) {
            return new g91(Arrays.copyOf(this.f6831f, i2), this.f6832g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Integer.valueOf(a(i2));
    }

    @Override // com.google.android.gms.internal.ads.j91
    public final void h(int i2) {
        a(this.f6832g, i2);
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.f6832g; i3++) {
            i2 = (i2 * 31) + this.f6831f[i3];
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.n71, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        a();
        for (int i2 = 0; i2 < this.f6832g; i2++) {
            if (obj.equals(Integer.valueOf(this.f6831f[i2]))) {
                int[] iArr = this.f6831f;
                System.arraycopy(iArr, i2 + 1, iArr, i2, (this.f6832g - i2) - 1);
                this.f6832g--;
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
            int[] iArr = this.f6831f;
            System.arraycopy(iArr, i3, iArr, i2, this.f6832g - i3);
            this.f6832g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        b(i2);
        int[] iArr = this.f6831f;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6832g;
    }

    private g91(int[] iArr, int i2) {
        this.f6831f = iArr;
        this.f6832g = i2;
    }

    private final void b(int i2) {
        if (i2 < 0 || i2 >= this.f6832g) {
            throw new IndexOutOfBoundsException(m(i2));
        }
    }

    private final void a(int i2, int i3) {
        int i4;
        a();
        if (i2 >= 0 && i2 <= (i4 = this.f6832g)) {
            int[] iArr = this.f6831f;
            if (i4 < iArr.length) {
                System.arraycopy(iArr, i2, iArr, i2 + 1, i4 - i2);
            } else {
                int[] iArr2 = new int[((i4 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                System.arraycopy(this.f6831f, i2, iArr2, i2 + 1, this.f6832g - i2);
                this.f6831f = iArr2;
            }
            this.f6831f[i2] = i3;
            this.f6832g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i2));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        a();
        b(i2);
        int[] iArr = this.f6831f;
        int i3 = iArr[i2];
        if (i2 < this.f6832g - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (r2 - i2) - 1);
        }
        this.f6832g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }
}
