package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.d0;
import com.google.common.collect.g0;
import com.google.common.collect.i0;
import com.google.common.collect.l1;
import com.google.common.collect.z;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import com.google.j2objc.annotations.Weak;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableSetMultimap.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class h0<K, V> extends d0<K, V> implements m1<K, V> {

    @GwtIncompatible
    private static final long serialVersionUID = 0;

    /* renamed from: h, reason: collision with root package name */
    private final transient g0<V> f14100h;

    /* renamed from: i, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    @MonotonicNonNullDecl
    private transient h0<V, K> f14101i;

    /* renamed from: j, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient g0<Map.Entry<K, V>> f14102j;

    /* compiled from: ImmutableSetMultimap.java */
    /* loaded from: classes.dex */
    public static final class a<K, V> extends d0.c<K, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.d0.c
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ d0.c a(Object obj, Object obj2) {
            a((a<K, V>) obj, obj2);
            return this;
        }

        @Override // com.google.common.collect.d0.c
        Collection<V> b() {
            return d1.a();
        }

        @Override // com.google.common.collect.d0.c
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ d0.c a(Map.Entry entry) {
            a(entry);
            return this;
        }

        @Override // com.google.common.collect.d0.c
        @CanIgnoreReturnValue
        public a<K, V> a(K k2, V v) {
            super.a((a<K, V>) k2, (K) v);
            return this;
        }

        @Override // com.google.common.collect.d0.c
        @CanIgnoreReturnValue
        public a<K, V> a(Map.Entry<? extends K, ? extends V> entry) {
            super.a((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.d0.c
        @CanIgnoreReturnValue
        @Beta
        public a<K, V> a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.a((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.d0.c
        public h0<K, V> a() {
            Collection entrySet = this.f14065a.entrySet();
            Comparator<? super K> comparator = this.f14066b;
            if (comparator != null) {
                entrySet = c1.from(comparator).onKeys().immutableSortedCopy(entrySet);
            }
            return h0.fromMapEntries(entrySet, this.f14067c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableSetMultimap.java */
    /* loaded from: classes.dex */
    public static final class b<K, V> extends g0<Map.Entry<K, V>> {

        /* renamed from: g, reason: collision with root package name */
        @Weak
        private final transient h0<K, V> f14103g;

        b(h0<K, V> h0Var) {
            this.f14103g = h0Var;
        }

        @Override // com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f14103g.containsEntry(entry.getKey(), entry.getValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.v
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14103g.size();
        }

        @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public t1<Map.Entry<K, V>> iterator() {
            return this.f14103g.entryIterator();
        }
    }

    /* compiled from: ImmutableSetMultimap.java */
    @GwtIncompatible
    /* loaded from: classes.dex */
    private static final class c {

        /* renamed from: a, reason: collision with root package name */
        static final l1.b<h0> f14104a = l1.a(h0.class, "emptySet");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(z<K, g0<V>> zVar, int i2, @NullableDecl Comparator<? super V> comparator) {
        super(zVar, i2);
        this.f14100h = a(comparator);
    }

    private static <K, V> h0<K, V> a(t0<? extends K, ? extends V> t0Var, Comparator<? super V> comparator) {
        e.i.c.a.j.a(t0Var);
        if (t0Var.isEmpty() && comparator == null) {
            return of();
        }
        if (t0Var instanceof h0) {
            h0<K, V> h0Var = (h0) t0Var;
            if (!h0Var.isPartialView()) {
                return h0Var;
            }
        }
        return fromMapEntries(t0Var.asMap().entrySet(), comparator);
    }

    private static <V> g0.a<V> b(@NullableDecl Comparator<? super V> comparator) {
        return comparator == null ? new g0.a<>() : new i0.a(comparator);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> h0<K, V> copyOf(t0<? extends K, ? extends V> t0Var) {
        return a(t0Var, (Comparator) null);
    }

    static <K, V> h0<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @NullableDecl Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        z.b bVar = new z.b(collection.size());
        int i2 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            g0 a2 = a(comparator, entry.getValue());
            if (!a2.isEmpty()) {
                bVar.a(key, a2);
                i2 += a2.size();
            }
        }
        return new h0<>(bVar.a(), i2, comparator);
    }

    public static <K, V> h0<K, V> of() {
        return p.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            z.b builder = z.builder();
            int i2 = 0;
            for (int i3 = 0; i3 < readInt; i3++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    g0.a b2 = b(comparator);
                    for (int i4 = 0; i4 < readInt2; i4++) {
                        b2.a((g0.a) objectInputStream.readObject());
                    }
                    g0 a2 = b2.a();
                    if (a2.size() == readInt2) {
                        builder.a(readObject, a2);
                        i2 += readInt2;
                    } else {
                        throw new InvalidObjectException("Duplicate key-value pairs exist for key " + readObject);
                    }
                } else {
                    throw new InvalidObjectException("Invalid value count " + readInt2);
                }
            }
            try {
                d0.e.f14068a.a((l1.b<d0>) this, (Object) builder.a());
                d0.e.f14069b.a((l1.b<d0>) this, i2);
                c.f14104a.a((l1.b<h0>) this, (Object) a(comparator));
                return;
            } catch (IllegalArgumentException e2) {
                throw ((InvalidObjectException) new InvalidObjectException(e2.getMessage()).initCause(e2));
            }
        }
        throw new InvalidObjectException("Invalid key count " + readInt);
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        l1.a(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0
    public /* bridge */ /* synthetic */ v get(@NullableDecl Object obj) {
        return get((h0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ v replaceValues(Object obj, Iterable iterable) {
        return replaceValues((h0<K, V>) obj, iterable);
    }

    @NullableDecl
    Comparator<? super V> valueComparator() {
        g0<V> g0Var = this.f14100h;
        if (g0Var instanceof i0) {
            return ((i0) g0Var).comparator();
        }
        return null;
    }

    @Beta
    public static <K, V> h0<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        a aVar = new a();
        aVar.a((Iterable) iterable);
        return aVar.a();
    }

    public static <K, V> h0<K, V> of(K k2, V v) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        return builder.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0
    /* renamed from: get */
    public /* bridge */ /* synthetic */ Collection mo5get(@NullableDecl Object obj) {
        return get((h0<K, V>) obj);
    }

    @Override // com.google.common.collect.d0
    public h0<V, K> inverse() {
        h0<V, K> h0Var = this.f14101i;
        if (h0Var != null) {
            return h0Var;
        }
        h0<V, K> a2 = a();
        this.f14101i = a2;
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((h0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0
    /* renamed from: get */
    public /* bridge */ /* synthetic */ Set mo5get(@NullableDecl Object obj) {
        return get((h0<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((h0<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.d
    public g0<Map.Entry<K, V>> entries() {
        g0<Map.Entry<K, V>> g0Var = this.f14102j;
        if (g0Var != null) {
            return g0Var;
        }
        b bVar = new b(this);
        this.f14102j = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.d0
    public g0<V> get(@NullableDecl K k2) {
        return (g0) e.i.c.a.g.a((g0) this.map.get(k2), this.f14100h);
    }

    @Override // com.google.common.collect.d0
    @CanIgnoreReturnValue
    @Deprecated
    /* renamed from: removeAll */
    public g0<V> mo6removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public g0<V> replaceValues(K k2, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> h0<K, V> of(K k2, V v, K k3, V v2) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        return builder.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private h0<V, K> a() {
        a builder = builder();
        t1 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.a((a) entry.getValue(), entry.getKey());
        }
        h0<V, K> a2 = builder.a();
        a2.f14101i = this;
        return a2;
    }

    public static <K, V> h0<K, V> of(K k2, V v, K k3, V v2, K k4, V v3) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        builder.a((a) k4, (K) v3);
        return builder.a();
    }

    private static <V> g0<V> a(@NullableDecl Comparator<? super V> comparator, Collection<? extends V> collection) {
        if (comparator == null) {
            return g0.copyOf((Collection) collection);
        }
        return i0.copyOf((Comparator) comparator, (Collection) collection);
    }

    public static <K, V> h0<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        builder.a((a) k4, (K) v3);
        builder.a((a) k5, (K) v4);
        return builder.a();
    }

    private static <V> g0<V> a(@NullableDecl Comparator<? super V> comparator) {
        if (comparator == null) {
            return g0.of();
        }
        return i0.emptySet(comparator);
    }

    public static <K, V> h0<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        builder.a((a) k4, (K) v3);
        builder.a((a) k5, (K) v4);
        builder.a((a) k6, (K) v5);
        return builder.a();
    }
}
