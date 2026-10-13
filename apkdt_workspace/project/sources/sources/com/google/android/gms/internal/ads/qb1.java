package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class qb1<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f8873e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f8874f;

    /* renamed from: g, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f8875g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ ib1 f8876h;

    private qb1(ib1 ib1Var) {
        this.f8876h = ib1Var;
        this.f8873e = -1;
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f8875g == null) {
            map = this.f8876h.f7260g;
            this.f8875g = map.entrySet().iterator();
        }
        return this.f8875g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i2 = this.f8873e + 1;
        list = this.f8876h.f7259f;
        if (i2 >= list.size()) {
            map = this.f8876h.f7260g;
            if (map.isEmpty() || !a().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f8874f = true;
        int i2 = this.f8873e + 1;
        this.f8873e = i2;
        list = this.f8876h.f7259f;
        if (i2 >= list.size()) {
            return a().next();
        }
        list2 = this.f8876h.f7259f;
        return (Map.Entry) list2.get(this.f8873e);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f8874f) {
            this.f8874f = false;
            this.f8876h.f();
            int i2 = this.f8873e;
            list = this.f8876h.f7259f;
            if (i2 < list.size()) {
                ib1 ib1Var = this.f8876h;
                int i3 = this.f8873e;
                this.f8873e = i3 - 1;
                ib1Var.c(i3);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ qb1(ib1 ib1Var, hb1 hb1Var) {
        this(ib1Var);
    }
}
