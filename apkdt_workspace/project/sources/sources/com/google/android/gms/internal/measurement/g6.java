package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
final class g6<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f11872e;

    /* renamed from: f, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f11873f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ e6 f11874g;

    private g6(e6 e6Var) {
        List list;
        this.f11874g = e6Var;
        list = this.f11874g.f11832f;
        this.f11872e = list.size();
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f11873f == null) {
            map = this.f11874g.f11836j;
            this.f11873f = map.entrySet().iterator();
        }
        return this.f11873f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i2 = this.f11872e;
        if (i2 > 0) {
            list = this.f11874g.f11832f;
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
        list = this.f11874g.f11832f;
        int i2 = this.f11872e - 1;
        this.f11872e = i2;
        return (Map.Entry) list.get(i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ g6(e6 e6Var, d6 d6Var) {
        this(e6Var);
    }
}
