package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableMapValues.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class c0<K, V> extends v<V> {
    private final z<K, V> map;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMapValues.java */
    /* loaded from: classes.dex */
    public class a extends t1<V> {

        /* renamed from: e, reason: collision with root package name */
        final t1<Map.Entry<K, V>> f14050e;

        a() {
            this.f14050e = c0.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14050e.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f14050e.next().getValue();
        }
    }

    /* compiled from: ImmutableMapValues.java */
    /* loaded from: classes.dex */
    class b extends x<V> {
        final /* synthetic */ x val$entryList;

        b(x xVar) {
            this.val$entryList = xVar;
        }

        @Override // java.util.List
        public V get(int i2) {
            return (V) ((Map.Entry) this.val$entryList.get(i2)).getValue();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.val$entryList.size();
        }
    }

    /* compiled from: ImmutableMapValues.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    private static class c<V> implements Serializable {
        private static final long serialVersionUID = 0;
        final z<?, V> map;

        c(z<?, V> zVar) {
            this.map = zVar;
        }

        Object readResolve() {
            return this.map.values();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(z<K, V> zVar) {
        this.map = zVar;
    }

    @Override // com.google.common.collect.v
    public x<V> asList() {
        return new b(this.map.entrySet().asList());
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return obj != null && m0.a(iterator(), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.v
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.map.size();
    }

    @Override // com.google.common.collect.v
    @GwtIncompatible
    Object writeReplace() {
        return new c(this.map);
    }

    @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public t1<V> iterator() {
        return new a();
    }
}
