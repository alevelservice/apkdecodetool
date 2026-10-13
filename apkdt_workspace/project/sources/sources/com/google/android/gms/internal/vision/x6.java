package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class x6<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f12603e;

    /* renamed from: f, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f12604f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ v6 f12605g;

    private x6(v6 v6Var) {
        List list;
        this.f12605g = v6Var;
        list = this.f12605g.f12556f;
        this.f12603e = list.size();
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f12604f == null) {
            map = this.f12605g.f12560j;
            this.f12604f = map.entrySet().iterator();
        }
        return this.f12604f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i2 = this.f12603e;
        if (i2 > 0) {
            list = this.f12605g.f12556f;
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
        list = this.f12605g.f12556f;
        int i2 = this.f12603e - 1;
        this.f12603e = i2;
        return (Map.Entry) list.get(i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x6(v6 v6Var, u6 u6Var) {
        this(v6Var);
    }
}
