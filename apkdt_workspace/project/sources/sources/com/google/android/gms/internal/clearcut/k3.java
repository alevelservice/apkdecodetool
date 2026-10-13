package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
final class k3<K, V> implements Iterator<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    private int f11472e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f11473f;

    /* renamed from: g, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f11474g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ c3 f11475h;

    private k3(c3 c3Var) {
        this.f11475h = c3Var;
        this.f11472e = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k3(c3 c3Var, d3 d3Var) {
        this(c3Var);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        Map map;
        if (this.f11474g == null) {
            map = this.f11475h.f11378g;
            this.f11474g = map.entrySet().iterator();
        }
        return this.f11474g;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i2 = this.f11472e + 1;
        list = this.f11475h.f11377f;
        if (i2 >= list.size()) {
            map = this.f11475h.f11378g;
            if (map.isEmpty() || !a().hasNext()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Map.Entry<K, V> next;
        List list2;
        this.f11473f = true;
        int i2 = this.f11472e + 1;
        this.f11472e = i2;
        list = this.f11475h.f11377f;
        if (i2 < list.size()) {
            list2 = this.f11475h.f11377f;
            next = (Map.Entry<K, V>) list2.get(this.f11472e);
        } else {
            next = a().next();
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (!this.f11473f) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f11473f = false;
        this.f11475h.f();
        int i2 = this.f11472e;
        list = this.f11475h.f11377f;
        if (i2 >= list.size()) {
            a().remove();
            return;
        }
        c3 c3Var = this.f11475h;
        int i3 = this.f11472e;
        this.f11472e = i3 - 1;
        c3Var.c(i3);
    }
}
