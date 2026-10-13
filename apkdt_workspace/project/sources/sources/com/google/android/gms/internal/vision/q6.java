package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class q6<E> extends c3<E> implements RandomAccess {

    /* renamed from: h, reason: collision with root package name */
    private static final q6<Object> f12488h;

    /* renamed from: f, reason: collision with root package name */
    private E[] f12489f;

    /* renamed from: g, reason: collision with root package name */
    private int f12490g;

    static {
        q6<Object> q6Var = new q6<>(new Object[0], 0);
        f12488h = q6Var;
        q6Var.U();
    }

    private q6(E[] eArr, int i2) {
        this.f12489f = eArr;
        this.f12490g = i2;
    }

    private final void a(int i2) {
        if (i2 < 0 || i2 >= this.f12490g) {
            throw new IndexOutOfBoundsException(b(i2));
        }
    }

    public static <E> q6<E> b() {
        return (q6<E>) f12488h;
    }

    @Override // com.google.android.gms.internal.vision.c3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e2) {
        a();
        int i2 = this.f12490g;
        E[] eArr = this.f12489f;
        if (i2 == eArr.length) {
            this.f12489f = (E[]) Arrays.copyOf(eArr, ((i2 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f12489f;
        int i3 = this.f12490g;
        this.f12490g = i3 + 1;
        eArr2[i3] = e2;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.vision.z4
    public final /* synthetic */ z4 c(int i2) {
        if (i2 >= this.f12490g) {
            return new q6(Arrays.copyOf(this.f12489f, i2), this.f12490g);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i2) {
        a(i2);
        return this.f12489f[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i2) {
        a();
        a(i2);
        E[] eArr = this.f12489f;
        E e2 = eArr[i2];
        if (i2 < this.f12490g - 1) {
            System.arraycopy(eArr, i2 + 1, eArr, i2, (r2 - i2) - 1);
        }
        this.f12490g--;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i2, E e2) {
        a();
        a(i2);
        E[] eArr = this.f12489f;
        E e3 = eArr[i2];
        eArr[i2] = e2;
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12490g;
    }

    private final String b(int i2) {
        int i3 = this.f12490g;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, E e2) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.f12490g)) {
            E[] eArr = this.f12489f;
            if (i3 < eArr.length) {
                System.arraycopy(eArr, i2, eArr, i2 + 1, i3 - i2);
            } else {
                E[] eArr2 = (E[]) new Object[((i3 * 3) / 2) + 1];
                System.arraycopy(eArr, 0, eArr2, 0, i2);
                System.arraycopy(this.f12489f, i2, eArr2, i2 + 1, this.f12490g - i2);
                this.f12489f = eArr2;
            }
            this.f12489f[i2] = e2;
            this.f12490g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(b(i2));
    }
}
