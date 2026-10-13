package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmutableMapEntrySet.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class a0<K, V> extends g0<Map.Entry<K, V>> {

    /* compiled from: ImmutableMapEntrySet.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    private static class a<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final z<K, V> map;

        a(z<K, V> zVar) {
            this.map = zVar;
        }

        Object readResolve() {
            return this.map.entrySet();
        }
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v = map().get(entry.getKey());
        return v != null && v.equals(entry.getValue());
    }

    @Override // com.google.common.collect.g0, java.util.Collection, java.util.Set
    public int hashCode() {
        return map().hashCode();
    }

    @Override // com.google.common.collect.g0
    @GwtIncompatible
    boolean isHashCodeFast() {
        return map().isHashCodeFast();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return map().isPartialView();
    }

    abstract z<K, V> map();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return map().size();
    }

    @Override // com.google.common.collect.g0, com.google.common.collect.v
    @GwtIncompatible
    Object writeReplace() {
        return new a(map());
    }
}
