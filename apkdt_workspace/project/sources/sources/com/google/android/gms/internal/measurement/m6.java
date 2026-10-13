package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
final class m6<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f11970e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f11971f;

    /* renamed from: g, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f11972g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ e6 f11973h;

    private m6(e6 e6Var) {
        this.f11973h = e6Var;
        this.f11970e = -1;
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f11972g == null) {
            map = this.f11973h.f11833g;
            this.f11972g = map.entrySet().iterator();
        }
        return this.f11972g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i2 = this.f11970e + 1;
        list = this.f11973h.f11832f;
        if (i2 >= list.size()) {
            map = this.f11973h.f11833g;
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
        this.f11971f = true;
        int i2 = this.f11970e + 1;
        this.f11970e = i2;
        list = this.f11973h.f11832f;
        if (i2 >= list.size()) {
            return a().next();
        }
        list2 = this.f11973h.f11832f;
        return (Map.Entry) list2.get(this.f11970e);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f11971f) {
            this.f11971f = false;
            this.f11973h.f();
            int i2 = this.f11970e;
            list = this.f11973h.f11832f;
            if (i2 < list.size()) {
                e6 e6Var = this.f11973h;
                int i3 = this.f11970e;
                this.f11970e = i3 - 1;
                e6Var.c(i3);
                return;
            }
            a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m6(e6 e6Var, d6 d6Var) {
        this(e6Var);
    }
}
