package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class x5<E> extends n2<E> {

    /* renamed from: g, reason: collision with root package name */
    private static final x5<Object> f12190g;

    /* renamed from: f, reason: collision with root package name */
    private final List<E> f12191f;

    static {
        x5<Object> x5Var = new x5<>(new ArrayList(0));
        f12190g = x5Var;
        x5Var.P();
    }

    private x5(List<E> list) {
        this.f12191f = list;
    }

    public static <E> x5<E> b() {
        return (x5<E>) f12190g;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, E e2) {
        a();
        this.f12191f.add(i2, e2);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i2) {
        return this.f12191f.get(i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i2) {
        a();
        E remove = this.f12191f.remove(i2);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i2, E e2) {
        a();
        E e3 = this.f12191f.set(i2, e2);
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12191f.size();
    }

    @Override // com.google.android.gms.internal.measurement.i4
    public final /* synthetic */ i4 zzap(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f12191f);
            return new x5(arrayList);
        }
        throw new IllegalArgumentException();
    }
}
