package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class r91<K> implements Map.Entry<K, Object> {

    /* renamed from: e, reason: collision with root package name */
    private Map.Entry<K, p91> f9063e;

    private r91(Map.Entry<K, p91> entry) {
        this.f9063e = entry;
    }

    public final p91 a() {
        return this.f9063e.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f9063e.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f9063e.getValue() == null) {
            return null;
        }
        p91.c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof oa1) {
            return this.f9063e.getValue().a((oa1) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
