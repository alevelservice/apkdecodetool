package com.google.android.gms.internal.measurement;

import java.util.Map;

/* loaded from: classes.dex */
final class o4<K> implements Map.Entry<K, Object> {

    /* renamed from: e, reason: collision with root package name */
    private Map.Entry<K, m4> f12017e;

    private o4(Map.Entry<K, m4> entry) {
        this.f12017e = entry;
    }

    public final m4 a() {
        return this.f12017e.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f12017e.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f12017e.getValue() == null) {
            return null;
        }
        m4.c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof k5) {
            return this.f12017e.getValue().a((k5) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
