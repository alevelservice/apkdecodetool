package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class r4<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f12071e;

    public r4(Iterator<Map.Entry<K, Object>> it) {
        this.f12071e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12071e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f12071e.next();
        return next.getValue() instanceof m4 ? new o4(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f12071e.remove();
    }
}
