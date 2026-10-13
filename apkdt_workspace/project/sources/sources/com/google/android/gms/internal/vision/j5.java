package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class j5<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: e, reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f12411e;

    public j5(Iterator<Map.Entry<K, Object>> it) {
        this.f12411e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12411e.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f12411e.next();
        return next.getValue() instanceof e5 ? new g5(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f12411e.remove();
    }
}
