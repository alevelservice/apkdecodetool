package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
final class e3<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f11414e;

    /* renamed from: f, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f11415f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ c3 f11416g;

    private e3(c3 c3Var) {
        List list;
        this.f11416g = c3Var;
        list = this.f11416g.f11377f;
        this.f11414e = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e3(c3 c3Var, d3 d3Var) {
        this(c3Var);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f11415f == null) {
            map = this.f11416g.f11381j;
            this.f11415f = map.entrySet().iterator();
        }
        return this.f11415f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i2 = this.f11414e;
        if (i2 > 0) {
            list = this.f11416g.f11377f;
            if (i2 <= list.size()) {
                return true;
            }
        }
        return a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Map.Entry<K, V> entry;
        if (a().hasNext()) {
            entry = a().next();
        } else {
            list = this.f11416g.f11377f;
            int i2 = this.f11414e - 1;
            this.f11414e = i2;
            entry = (Map.Entry<K, V>) list.get(i2);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
