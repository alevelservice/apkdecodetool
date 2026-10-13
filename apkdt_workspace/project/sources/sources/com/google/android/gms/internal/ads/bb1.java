package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class bb1<E> extends n71<E> {

    /* renamed from: g, reason: collision with root package name */
    private static final bb1<Object> f5747g;

    /* renamed from: f, reason: collision with root package name */
    private final List<E> f5748f;

    static {
        bb1<Object> bb1Var = new bb1<>(new ArrayList(0));
        f5747g = bb1Var;
        bb1Var.T();
    }

    private bb1(List<E> list) {
        this.f5748f = list;
    }

    public static <E> bb1<E> b() {
        return (bb1<E>) f5747g;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, E e2) {
        a();
        this.f5748f.add(i2, e2);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.l91
    public final /* synthetic */ l91 f(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f5748f);
            return new bb1(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i2) {
        return this.f5748f.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i2) {
        a();
        E remove = this.f5748f.remove(i2);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i2, E e2) {
        a();
        E e3 = this.f5748f.set(i2, e2);
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5748f.size();
    }
}
