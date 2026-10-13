package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/* compiled from: ForwardingConcurrentMap.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class r<K, V> extends s<K, V> implements ConcurrentMap<K, V> {
    @Override // com.google.common.collect.s, com.google.common.collect.t
    protected abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // com.google.common.collect.s, com.google.common.collect.t
    protected abstract /* bridge */ /* synthetic */ Map delegate();

    @Override // com.google.common.collect.s, com.google.common.collect.t
    protected abstract ConcurrentMap<K, V> delegate();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V putIfAbsent(K k2, V v) {
        return delegate().putIfAbsent(k2, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean remove(Object obj, Object obj2) {
        return delegate().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V replace(K k2, V v) {
        return delegate().replace(k2, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean replace(K k2, V v, V v2) {
        return delegate().replace(k2, v, v2);
    }
}
