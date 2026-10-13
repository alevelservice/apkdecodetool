package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ForwardingMap.java */
@GwtCompatible
/* loaded from: classes.dex */
public abstract class s<K, V> extends t implements Map<K, V> {
    @Override // java.util.Map
    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return delegate().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // com.google.common.collect.t
    protected abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // com.google.common.collect.t
    protected abstract Map<K, V> delegate();

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Map
    public V get(@NullableDecl Object obj) {
        return delegate().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return delegate().keySet();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    public V put(K k2, V v) {
        return delegate().put(k2, v);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    public V remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return delegate().size();
    }

    protected void standardClear() {
        m0.a((Iterator<?>) entrySet().iterator());
    }

    @Beta
    protected boolean standardContainsKey(@NullableDecl Object obj) {
        return s0.a((Map<?, ?>) this, obj);
    }

    protected boolean standardContainsValue(@NullableDecl Object obj) {
        return s0.b(this, obj);
    }

    protected boolean standardEquals(@NullableDecl Object obj) {
        return s0.c(this, obj);
    }

    protected int standardHashCode() {
        return n1.a(entrySet());
    }

    protected boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    protected void standardPutAll(Map<? extends K, ? extends V> map) {
        s0.a((Map) this, (Map) map);
    }

    @Beta
    protected V standardRemove(@NullableDecl Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (e.i.c.a.h.a(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    protected String standardToString() {
        return s0.a(this);
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return delegate().values();
    }
}
