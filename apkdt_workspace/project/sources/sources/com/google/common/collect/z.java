package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.v;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableMap.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class z<K, V> implements Map<K, V>, Serializable {
    static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];

    /* renamed from: e, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    private transient g0<Map.Entry<K, V>> f14202e;

    /* renamed from: f, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    private transient g0<K> f14203f;

    /* renamed from: g, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    private transient v<V> f14204g;

    /* renamed from: h, reason: collision with root package name */
    @LazyInit
    private transient h0<K, V> f14205h;

    /* compiled from: ImmutableMap.java */
    /* loaded from: classes.dex */
    class a extends t1<K> {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ t1 f14206e;

        a(z zVar, t1 t1Var) {
            this.f14206e = t1Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14206e.hasNext();
        }

        @Override // java.util.Iterator
        public K next() {
            return (K) ((Map.Entry) this.f14206e.next()).getKey();
        }
    }

    /* compiled from: ImmutableMap.java */
    /* loaded from: classes.dex */
    public static class b<K, V> {

        /* renamed from: a, reason: collision with root package name */
        @MonotonicNonNullDecl
        Comparator<? super V> f14207a;

        /* renamed from: b, reason: collision with root package name */
        Object[] f14208b;

        /* renamed from: c, reason: collision with root package name */
        int f14209c;

        /* renamed from: d, reason: collision with root package name */
        boolean f14210d;

        public b() {
            this(4);
        }

        private void a(int i2) {
            int i3 = i2 * 2;
            Object[] objArr = this.f14208b;
            if (i3 > objArr.length) {
                this.f14208b = Arrays.copyOf(objArr, v.b.a(objArr.length, i3));
                this.f14210d = false;
            }
        }

        void b() {
            int i2;
            if (this.f14207a != null) {
                if (this.f14210d) {
                    this.f14208b = Arrays.copyOf(this.f14208b, this.f14209c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.f14209c];
                int i3 = 0;
                while (true) {
                    i2 = this.f14209c;
                    if (i3 >= i2) {
                        break;
                    }
                    Object[] objArr = this.f14208b;
                    int i4 = i3 * 2;
                    entryArr[i3] = new AbstractMap.SimpleImmutableEntry(objArr[i4], objArr[i4 + 1]);
                    i3++;
                }
                Arrays.sort(entryArr, 0, i2, c1.from(this.f14207a).onResultOf(s0.b()));
                for (int i5 = 0; i5 < this.f14209c; i5++) {
                    int i6 = i5 * 2;
                    this.f14208b[i6] = entryArr[i5].getKey();
                    this.f14208b[i6 + 1] = entryArr[i5].getValue();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i2) {
            this.f14208b = new Object[i2 * 2];
            this.f14209c = 0;
            this.f14210d = false;
        }

        @CanIgnoreReturnValue
        public b<K, V> a(K k2, V v) {
            a(this.f14209c + 1);
            i.a(k2, v);
            Object[] objArr = this.f14208b;
            int i2 = this.f14209c;
            objArr[i2 * 2] = k2;
            objArr[(i2 * 2) + 1] = v;
            this.f14209c = i2 + 1;
            return this;
        }

        @CanIgnoreReturnValue
        public b<K, V> a(Map.Entry<? extends K, ? extends V> entry) {
            a(entry.getKey(), entry.getValue());
            return this;
        }

        @CanIgnoreReturnValue
        @Beta
        public b<K, V> a(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                a(this.f14209c + ((Collection) iterable).size());
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public z<K, V> a() {
            b();
            this.f14210d = true;
            return f1.create(this.f14209c, this.f14208b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmutableMap.java */
    /* loaded from: classes.dex */
    public static abstract class c<K, V> extends z<K, V> {

        /* compiled from: ImmutableMap.java */
        /* loaded from: classes.dex */
        class a extends a0<K, V> {
            a() {
            }

            @Override // com.google.common.collect.a0
            z<K, V> map() {
                return c.this;
            }

            @Override // com.google.common.collect.g0, com.google.common.collect.v, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public t1<Map.Entry<K, V>> iterator() {
                return c.this.entryIterator();
            }
        }

        c() {
        }

        @Override // com.google.common.collect.z
        g0<Map.Entry<K, V>> createEntrySet() {
            return new a();
        }

        @Override // com.google.common.collect.z
        g0<K> createKeySet() {
            return new b0(this);
        }

        @Override // com.google.common.collect.z
        v<V> createValues() {
            return new c0(this);
        }

        abstract t1<Map.Entry<K, V>> entryIterator();

        @Override // com.google.common.collect.z, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.z, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        @Override // com.google.common.collect.z, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* compiled from: ImmutableMap.java */
    /* loaded from: classes.dex */
    private final class d extends c<K, g0<V>> {

        /* compiled from: ImmutableMap.java */
        /* loaded from: classes.dex */
        class a extends t1<Map.Entry<K, g0<V>>> {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Iterator f14211e;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ImmutableMap.java */
            /* renamed from: com.google.common.collect.z$d$a$a, reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class C0107a extends com.google.common.collect.c<K, g0<V>> {

                /* renamed from: e, reason: collision with root package name */
                final /* synthetic */ Map.Entry f14212e;

                C0107a(a aVar, Map.Entry entry) {
                    this.f14212e = entry;
                }

                @Override // com.google.common.collect.c, java.util.Map.Entry
                public K getKey() {
                    return (K) this.f14212e.getKey();
                }

                @Override // com.google.common.collect.c, java.util.Map.Entry
                public g0<V> getValue() {
                    return g0.of(this.f14212e.getValue());
                }
            }

            a(d dVar, Iterator it) {
                this.f14211e = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14211e.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, g0<V>> next() {
                return new C0107a(this, (Map.Entry) this.f14211e.next());
            }
        }

        private d() {
        }

        @Override // com.google.common.collect.z, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return z.this.containsKey(obj);
        }

        @Override // com.google.common.collect.z.c, com.google.common.collect.z
        g0<K> createKeySet() {
            return z.this.keySet();
        }

        @Override // com.google.common.collect.z.c
        t1<Map.Entry<K, g0<V>>> entryIterator() {
            return new a(this, z.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.z, java.util.Map
        public int hashCode() {
            return z.this.hashCode();
        }

        @Override // com.google.common.collect.z
        boolean isHashCodeFast() {
            return z.this.isHashCodeFast();
        }

        @Override // com.google.common.collect.z
        boolean isPartialView() {
            return z.this.isPartialView();
        }

        @Override // java.util.Map
        public int size() {
            return z.this.size();
        }

        /* synthetic */ d(z zVar, a aVar) {
            this();
        }

        @Override // com.google.common.collect.z, java.util.Map
        public g0<V> get(@NullableDecl Object obj) {
            Object obj2 = z.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return g0.of(obj2);
        }
    }

    /* compiled from: ImmutableMap.java */
    /* loaded from: classes.dex */
    static class e implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object[] keys;
        private final Object[] values;

        e(z<?, ?> zVar) {
            this.keys = new Object[zVar.size()];
            this.values = new Object[zVar.size()];
            t1<Map.Entry<?, ?>> it = zVar.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                this.keys[i2] = next.getKey();
                this.values[i2] = next.getValue();
                i2++;
            }
        }

        Object createMap(b<Object, Object> bVar) {
            int i2 = 0;
            while (true) {
                Object[] objArr = this.keys;
                if (i2 < objArr.length) {
                    bVar.a(objArr[i2], this.values[i2]);
                    i2++;
                } else {
                    return bVar.a();
                }
            }
        }

        Object readResolve() {
            return createMap(new b<>(this.keys.length));
        }
    }

    public static <K, V> b<K, V> builder() {
        return new b<>();
    }

    @Beta
    public static <K, V> b<K, V> builderWithExpectedSize(int i2) {
        i.a(i2, "expectedSize");
        return new b<>(i2);
    }

    static void checkNoConflict(boolean z, String str, Map.Entry<?, ?> entry, Map.Entry<?, ?> entry2) {
        if (!z) {
            throw conflictException(str, entry, entry2);
        }
    }

    static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static <K, V> z<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof z) && !(map instanceof SortedMap)) {
            z<K, V> zVar = (z) map;
            if (!zVar.isPartialView()) {
                return zVar;
            }
        }
        return copyOf(map.entrySet());
    }

    static <K, V> Map.Entry<K, V> entryOf(K k2, V v) {
        i.a(k2, v);
        return new AbstractMap.SimpleImmutableEntry(k2, v);
    }

    public static <K, V> z<K, V> of() {
        return (z<K, V>) f1.EMPTY;
    }

    public h0<K, V> asMultimap() {
        if (isEmpty()) {
            return h0.of();
        }
        h0<K, V> h0Var = this.f14205h;
        if (h0Var != null) {
            return h0Var;
        }
        h0<K, V> h0Var2 = new h0<>(new d(this, null), size(), null);
        this.f14205h = h0Var2;
        return h0Var2;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    abstract g0<Map.Entry<K, V>> createEntrySet();

    abstract g0<K> createKeySet();

    abstract v<V> createValues();

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        return s0.c(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return n1.a(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHashCodeFast() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isPartialView();

    /* JADX INFO: Access modifiers changed from: package-private */
    public t1<K> keyIterator() {
        return new a(this, entrySet().iterator());
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V put(K k2, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return s0.a(this);
    }

    Object writeReplace() {
        return new e(this);
    }

    public static <K, V> z<K, V> of(K k2, V v) {
        i.a(k2, v);
        return f1.create(1, new Object[]{k2, v});
    }

    @Override // java.util.Map
    public g0<Map.Entry<K, V>> entrySet() {
        g0<Map.Entry<K, V>> g0Var = this.f14202e;
        if (g0Var != null) {
            return g0Var;
        }
        g0<Map.Entry<K, V>> createEntrySet = createEntrySet();
        this.f14202e = createEntrySet;
        return createEntrySet;
    }

    @Override // java.util.Map
    public g0<K> keySet() {
        g0<K> g0Var = this.f14203f;
        if (g0Var != null) {
            return g0Var;
        }
        g0<K> createKeySet = createKeySet();
        this.f14203f = createKeySet;
        return createKeySet;
    }

    @Override // java.util.Map
    public v<V> values() {
        v<V> vVar = this.f14204g;
        if (vVar != null) {
            return vVar;
        }
        v<V> createValues = createValues();
        this.f14204g = createValues;
        return createValues;
    }

    public static <K, V> z<K, V> of(K k2, V v, K k3, V v2) {
        i.a(k2, v);
        i.a(k3, v2);
        return f1.create(2, new Object[]{k2, v, k3, v2});
    }

    @Beta
    public static <K, V> z<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.a(iterable);
        return bVar.a();
    }

    public static <K, V> z<K, V> of(K k2, V v, K k3, V v2, K k4, V v3) {
        i.a(k2, v);
        i.a(k3, v2);
        i.a(k4, v3);
        return f1.create(3, new Object[]{k2, v, k3, v2, k4, v3});
    }

    public static <K, V> z<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4) {
        i.a(k2, v);
        i.a(k3, v2);
        i.a(k4, v3);
        i.a(k5, v4);
        return f1.create(4, new Object[]{k2, v, k3, v2, k4, v3, k5, v4});
    }

    public static <K, V> z<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5) {
        i.a(k2, v);
        i.a(k3, v2);
        i.a(k4, v3);
        i.a(k5, v4);
        i.a(k6, v5);
        return f1.create(5, new Object[]{k2, v, k3, v2, k4, v3, k5, v4, k6, v5});
    }
}
