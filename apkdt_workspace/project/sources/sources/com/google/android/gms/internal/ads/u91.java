package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class u91<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f9696e;

    public u91(Iterator<Map.Entry<K, Object>> it) {
        this.f9696e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9696e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f9696e.next();
        return next.getValue() instanceof p91 ? new r91(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f9696e.remove();
    }
}
