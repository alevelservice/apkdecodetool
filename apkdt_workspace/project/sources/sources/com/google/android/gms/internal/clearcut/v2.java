package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class v2<E> extends s<E> {

    /* renamed from: g, reason: collision with root package name */
    private static final v2<Object> f11582g;

    /* renamed from: f, reason: collision with root package name */
    private final List<E> f11583f;

    static {
        v2<Object> v2Var = new v2<>();
        f11582g = v2Var;
        v2Var.W();
    }

    v2() {
        this(new ArrayList(10));
    }

    private v2(List<E> list) {
        this.f11583f = list;
    }

    public static <E> v2<E> b() {
        return (v2<E>) f11582g;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i2, E e2) {
        a();
        this.f11583f.add(i2, e2);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i2) {
        return this.f11583f.get(i2);
    }

    @Override // com.google.android.gms.internal.clearcut.i1
    public final /* synthetic */ i1 i(int i2) {
        if (i2 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i2);
        arrayList.addAll(this.f11583f);
        return new v2(arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i2) {
        a();
        E remove = this.f11583f.remove(i2);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i2, E e2) {
        a();
        E e3 = this.f11583f.set(i2, e2);
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11583f.size();
    }
}
