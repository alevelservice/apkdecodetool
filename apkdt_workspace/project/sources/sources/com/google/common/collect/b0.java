package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableMapKeySet.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class b0<K, V> extends k0<K> {
    private final z<K, V> map;

    /* compiled from: ImmutableMapKeySet.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    private static class a<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final z<K, ?> map;

        a(z<K, ?> zVar) {
            this.map = zVar;
        }

        Object readResolve() {
            return this.map.keySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(z<K, V> zVar) {
        this.map = zVar;
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.k0
    K get(int i2) {
        return this.map.entrySet().asList().get(i2).getKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.map.size();
    }

    @Override // com.google.common.collect.g0, com.google.common.collect.v
    @GwtIncompatible
    Object writeReplace() {
        return new a(this.map);
    }

    @Override // com.google.common.collect.k0, com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<K> iterator() {
        return this.map.keyIterator();
    }
}
