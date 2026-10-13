package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.l1;
import com.google.common.collect.v0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableMultimap.java */
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class d0<K, V> extends com.google.common.collect.g<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final transient z<K, ? extends v<V>> map;
    final transient int size;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMultimap.java */
    /* loaded from: classes.dex */
    public class a extends t1<Map.Entry<K, V>> {

        /* renamed from: e, reason: collision with root package name */
        final Iterator<? extends Map.Entry<K, ? extends v<V>>> f14058e;

        /* renamed from: f, reason: collision with root package name */
        K f14059f = null;

        /* renamed from: g, reason: collision with root package name */
        Iterator<V> f14060g = m0.a();

        a() {
            this.f14058e = d0.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14060g.hasNext() || this.f14058e.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (!this.f14060g.hasNext()) {
                Map.Entry<K, ? extends v<V>> next = this.f14058e.next();
                this.f14059f = next.getKey();
                this.f14060g = next.getValue().iterator();
            }
            return s0.a(this.f14059f, this.f14060g.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMultimap.java */
    /* loaded from: classes.dex */
    public class b extends t1<V> {

        /* renamed from: e, reason: collision with root package name */
        Iterator<? extends v<V>> f14062e;

        /* renamed from: f, reason: collision with root package name */
        Iterator<V> f14063f = m0.a();

        b() {
            this.f14062e = d0.this.map.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14063f.hasNext() || this.f14062e.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            if (!this.f14063f.hasNext()) {
                this.f14063f = this.f14062e.next().iterator();
            }
            return this.f14063f.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableMultimap.java */
    /* loaded from: classes.dex */
    public static class d<K, V> extends v<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;

        @Weak
        final d0<K, V> multimap;

        d(d0<K, V> d0Var) {
            this.multimap = d0Var;
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public t1<Map.Entry<K, V>> iterator() {
            return this.multimap.entryIterator();
        }
    }

    /* compiled from: ImmutableMultimap.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    static class e {

        /* renamed from: a, reason: collision with root package name */
        static final l1.b<d0> f14068a = l1.a(d0.class, "map");

        /* renamed from: b, reason: collision with root package name */
        static final l1.b<d0> f14069b = l1.a(d0.class, "size");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMultimap.java */
    /* loaded from: classes.dex */
    public class f extends e0<K> {
        f() {
        }

        @Override // com.google.common.collect.e0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return d0.this.containsKey(obj);
        }

        @Override // com.google.common.collect.v0
        public int count(@NullableDecl Object obj) {
            v<V> vVar = d0.this.map.get(obj);
            if (vVar == null) {
                return 0;
            }
            return vVar.size();
        }

        @Override // com.google.common.collect.e0
        v0.a<K> getEntry(int i2) {
            Map.Entry<K, ? extends v<V>> entry = d0.this.map.entrySet().asList().get(i2);
            return w0.a(entry.getKey(), entry.getValue().size());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.v0
        public int size() {
            return d0.this.size();
        }

        @Override // com.google.common.collect.e0, com.google.common.collect.v
        @GwtIncompatible
        Object writeReplace() {
            return new g(d0.this);
        }

        @Override // com.google.common.collect.e0, com.google.common.collect.v0
        public g0<K> elementSet() {
            return d0.this.keySet();
        }
    }

    /* compiled from: ImmutableMultimap.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    private static final class g implements Serializable {
        final d0<?, ?> multimap;

        g(d0<?, ?> d0Var) {
            this.multimap = d0Var;
        }

        Object readResolve() {
            return this.multimap.keys();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableMultimap.java */
    /* loaded from: classes.dex */
    public static final class h<K, V> extends v<V> {
        private static final long serialVersionUID = 0;

        /* renamed from: f, reason: collision with root package name */
        @Weak
        private final transient d0<K, V> f14070f;

        h(d0<K, V> d0Var) {
            this.f14070f = d0Var;
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return this.f14070f.containsValue(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        @GwtIncompatible
        public int copyIntoArray(Object[] objArr, int i2) {
            t1<? extends v<V>> it = this.f14070f.map.values().iterator();
            while (it.hasNext()) {
                i2 = it.next().copyIntoArray(objArr, i2);
            }
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f14070f.size();
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public t1<V> iterator() {
            return this.f14070f.valueIterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(z<K, ? extends v<V>> zVar, int i2) {
        this.map = zVar;
        this.size = i2;
    }

    public static <K, V> c<K, V> builder() {
        return new c<>();
    }

    public static <K, V> d0<K, V> copyOf(t0<? extends K, ? extends V> t0Var) {
        if (t0Var instanceof d0) {
            d0<K, V> d0Var = (d0) t0Var;
            if (!d0Var.isPartialView()) {
                return d0Var;
            }
        }
        return y.copyOf((t0) t0Var);
    }

    public static <K, V> d0<K, V> of() {
        return y.of();
    }

    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    public boolean containsKey(@NullableDecl Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.d
    public boolean containsValue(@NullableDecl Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.d
    Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.d
    Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.d
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public abstract v<V> get(K k2);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: get, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Collection mo5get(Object obj) {
        return get((d0<K, V>) obj);
    }

    @Override // com.google.common.collect.d
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public abstract d0<V, K> inverse();

    @Override // com.google.common.collect.d, com.google.common.collect.t0
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override // com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public boolean put(K k2, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public boolean putAll(K k2, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((d0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.t0
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.d
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> d0<K, V> of(K k2, V v) {
        return y.of((Object) k2, (Object) v);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.t0
    public z<K, Collection<V>> asMap() {
        return this.map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    public v<Map.Entry<K, V>> createEntries() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    public e0<K> createKeys() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    public v<V> createValues() {
        return new h(this);
    }

    @Override // com.google.common.collect.d
    public v<Map.Entry<K, V>> entries() {
        return (v) super.entries();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    public t1<Map.Entry<K, V>> entryIterator() {
        return new a();
    }

    @Override // com.google.common.collect.d
    public g0<K> keySet() {
        return this.map.keySet();
    }

    @Override // com.google.common.collect.d
    public e0<K> keys() {
        return (e0) super.keys();
    }

    @Override // com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public boolean putAll(t0<? extends K, ? extends V> t0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // 
    @CanIgnoreReturnValue
    @Deprecated
    /* renamed from: removeAll, reason: merged with bridge method [inline-methods] */
    public v<V> mo6removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public v<V> replaceValues(K k2, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    public t1<V> valueIterator() {
        return new b();
    }

    @Override // com.google.common.collect.d
    public v<V> values() {
        return (v) super.values();
    }

    public static <K, V> d0<K, V> of(K k2, V v, K k3, V v2) {
        return y.of((Object) k2, (Object) v, (Object) k3, (Object) v2);
    }

    /* compiled from: ImmutableMultimap.java */
    /* loaded from: classes.dex */
    public static class c<K, V> {

        /* renamed from: a, reason: collision with root package name */
        Map<K, Collection<V>> f14065a = d1.b();

        /* renamed from: b, reason: collision with root package name */
        @MonotonicNonNullDecl
        Comparator<? super K> f14066b;

        /* renamed from: c, reason: collision with root package name */
        @MonotonicNonNullDecl
        Comparator<? super V> f14067c;

        @CanIgnoreReturnValue
        public c<K, V> a(K k2, V v) {
            i.a(k2, v);
            Collection<V> collection = this.f14065a.get(k2);
            if (collection == null) {
                Map<K, Collection<V>> map = this.f14065a;
                Collection<V> b2 = b();
                map.put(k2, b2);
                collection = b2;
            }
            collection.add(v);
            return this;
        }

        Collection<V> b() {
            return new ArrayList();
        }

        @CanIgnoreReturnValue
        public c<K, V> a(Map.Entry<? extends K, ? extends V> entry) {
            return a(entry.getKey(), entry.getValue());
        }

        @CanIgnoreReturnValue
        @Beta
        public c<K, V> a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public d0<K, V> a() {
            Collection entrySet = this.f14065a.entrySet();
            Comparator<? super K> comparator = this.f14066b;
            if (comparator != null) {
                entrySet = c1.from(comparator).onKeys().immutableSortedCopy(entrySet);
            }
            return y.fromMapEntries(entrySet, this.f14067c);
        }
    }

    public static <K, V> d0<K, V> of(K k2, V v, K k3, V v2, K k4, V v3) {
        return y.of((Object) k2, (Object) v, (Object) k3, (Object) v2, (Object) k4, (Object) v3);
    }

    @Beta
    public static <K, V> d0<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return y.copyOf((Iterable) iterable);
    }

    public static <K, V> d0<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4) {
        return y.of((Object) k2, (Object) v, (Object) k3, (Object) v2, (Object) k4, (Object) v3, (Object) k5, (Object) v4);
    }

    public static <K, V> d0<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5) {
        return y.of((Object) k2, (Object) v, (Object) k3, (Object) v2, (Object) k4, (Object) v3, (Object) k5, (Object) v4, (Object) k6, (Object) v5);
    }
}
