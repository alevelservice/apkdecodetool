package com.google.android.gms.internal.clearcut;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class p1<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f11526e;

    public p1(Iterator<Map.Entry<K, Object>> it) {
        this.f11526e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11526e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f11526e.next();
        return next.getValue() instanceof m1 ? new o1(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f11526e.remove();
    }
}
