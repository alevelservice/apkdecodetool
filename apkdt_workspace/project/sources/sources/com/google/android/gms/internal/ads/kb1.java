package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class kb1<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f7650e;

    /* renamed from: f, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f7651f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ ib1 f7652g;

    private kb1(ib1 ib1Var) {
        List list;
        this.f7652g = ib1Var;
        list = this.f7652g.f7259f;
        this.f7650e = list.size();
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f7651f == null) {
            map = this.f7652g.f7263j;
            this.f7651f = map.entrySet().iterator();
        }
        return this.f7651f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i2 = this.f7650e;
        if (i2 > 0) {
            list = this.f7652g.f7259f;
            if (i2 <= list.size()) {
                return true;
            }
        }
        return a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        if (a().hasNext()) {
            return a().next();
        }
        list = this.f7652g.f7259f;
        int i2 = this.f7650e - 1;
        this.f7650e = i2;
        return (Map.Entry) list.get(i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ kb1(ib1 ib1Var, hb1 hb1Var) {
        this(ib1Var);
    }
}
