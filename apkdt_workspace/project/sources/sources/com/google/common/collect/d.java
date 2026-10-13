package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractMultimap.java */
@GwtCompatible
/* loaded from: classes.dex */
abstract class d<K, V> implements t0<K, V> {

    /* renamed from: e, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Collection<Map.Entry<K, V>> f14055e;

    /* renamed from: f, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient v0<K> f14056f;

    /* renamed from: g, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Collection<V> f14057g;

    @Override // com.google.common.collect.t0
    public abstract Map<K, Collection<V>> asMap();

    public boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public boolean containsValue(@NullableDecl Object obj) {
        Iterator<Collection<V>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Map<K, Collection<V>> createAsMap();

    abstract Collection<Map.Entry<K, V>> createEntries();

    abstract Set<K> createKeySet();

    abstract v0<K> createKeys();

    abstract Collection<V> createValues();

    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.f14055e;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> createEntries = createEntries();
        this.f14055e = createEntries;
        return createEntries;
    }

    abstract Iterator<Map.Entry<K, V>> entryIterator();

    public boolean equals(@NullableDecl Object obj) {
        return u0.a(this, obj);
    }

    public int hashCode() {
        return asMap().hashCode();
    }

    @Override // com.google.common.collect.t0
    public boolean isEmpty() {
        return size() == 0;
    }

    public abstract Set<K> keySet();

    public v0<K> keys() {
        v0<K> v0Var = this.f14056f;
        if (v0Var != null) {
            return v0Var;
        }
        v0<K> createKeys = createKeys();
        this.f14056f = createKeys;
        return createKeys;
    }

    @CanIgnoreReturnValue
    public abstract boolean put(@NullableDecl K k2, @NullableDecl V v);

    @CanIgnoreReturnValue
    public abstract boolean putAll(t0<? extends K, ? extends V> t0Var);

    @CanIgnoreReturnValue
    public abstract boolean putAll(@NullableDecl K k2, Iterable<? extends V> iterable);

    @CanIgnoreReturnValue
    public abstract boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2);

    @CanIgnoreReturnValue
    public abstract Collection<V> replaceValues(@NullableDecl K k2, Iterable<? extends V> iterable);

    public String toString() {
        return asMap().toString();
    }

    abstract Iterator<V> valueIterator();

    public Collection<V> values() {
        Collection<V> collection = this.f14057g;
        if (collection != null) {
            return collection;
        }
        Collection<V> createValues = createValues();
        this.f14057g = createValues;
        return createValues;
    }
}
