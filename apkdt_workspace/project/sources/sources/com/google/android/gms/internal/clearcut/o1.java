package com.google.android.gms.internal.clearcut;

import java.util.Map;

/* loaded from: classes.dex */
final class o1<K> implements Map.Entry<K, Object> {

    /* renamed from: e, reason: collision with root package name */
    private Map.Entry<K, m1> f11522e;

    private o1(Map.Entry<K, m1> entry) {
        this.f11522e = entry;
    }

    public final m1 a() {
        return this.f11522e.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f11522e.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f11522e.getValue() == null) {
            return null;
        }
        m1.c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof i2) {
            return this.f11522e.getValue().a((i2) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
