package com.google.android.gms.internal.vision;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class g5<K> implements Map.Entry<K, Object> {

    /* renamed from: e, reason: collision with root package name */
    private Map.Entry<K, e5> f12356e;

    private g5(Map.Entry<K, e5> entry) {
        this.f12356e = entry;
    }

    public final e5 a() {
        return this.f12356e.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f12356e.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f12356e.getValue() == null) {
            return null;
        }
        e5.c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof d6) {
            return this.f12356e.getValue().a((d6) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
