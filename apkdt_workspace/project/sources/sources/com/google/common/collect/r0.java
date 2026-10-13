package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.q0;
import com.google.common.collect.r0.i;
import com.google.common.collect.r0.n;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.Weak;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapMakerInternalMap.java */
@GwtIncompatible
/* loaded from: classes.dex */
public class r0<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    static final long CLEANUP_EXECUTOR_DELAY_SECS = 60;
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final g0<Object, Object, e> UNSET_WEAK_VALUE_REFERENCE = new a();
    private static final long serialVersionUID = 5;
    final int concurrencyLevel;
    final transient j<K, V, E, S> entryHelper;

    @MonotonicNonNullDecl
    transient Set<Map.Entry<K, V>> entrySet;
    final e.i.c.a.b<Object> keyEquivalence;

    @MonotonicNonNullDecl
    transient Set<K> keySet;
    final transient int segmentMask;
    final transient int segmentShift;
    final transient n<K, V, E, S>[] segments;

    @MonotonicNonNullDecl
    transient Collection<V> values;

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    static class a implements g0<Object, Object, e> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.r0.g0
        public e a() {
            return null;
        }

        /* renamed from: a, reason: avoid collision after fix types in other method */
        public g0<Object, Object, e> a2(ReferenceQueue<Object> referenceQueue, e eVar) {
            return this;
        }

        @Override // com.google.common.collect.r0.g0
        public /* bridge */ /* synthetic */ g0<Object, Object, e> a(ReferenceQueue<Object> referenceQueue, e eVar) {
            a2(referenceQueue, eVar);
            return this;
        }

        @Override // com.google.common.collect.r0.g0
        public void clear() {
        }

        @Override // com.google.common.collect.r0.g0
        public Object get() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class a0<K> extends n<K, q0.a, z<K>, a0<K>> {
        private final ReferenceQueue<K> queueForKeys;

        a0(r0<K, q0.a, z<K>, a0<K>> r0Var, int i2, int i3) {
            super(r0Var, i2, i3);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.r0.n
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.r0.n
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.r0.n
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.r0.n
        public a0<K> self() {
            return this;
        }

        @Override // com.google.common.collect.r0.n
        public z<K> castForTesting(i<K, q0.a, ?> iVar) {
            return (z) iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class b0<K, V> extends d<K, V, b0<K, V>> implements w<K, V, b0<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        @NullableDecl
        private volatile V f14148c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        public static final class a<K, V> implements j<K, V, b0<K, V>, c0<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            private static final a<?, ?> f14149a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f14149a;
            }

            @Override // com.google.common.collect.r0.j
            public p b() {
                return p.STRONG;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ i a(n nVar, Object obj, int i2, @NullableDecl i iVar) {
                return a((c0<c0<K, V>, V>) nVar, (c0<K, V>) obj, i2, (b0<c0<K, V>, V>) iVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ void a(n nVar, i iVar, Object obj) {
                a((c0<K, b0<K, V>>) nVar, (b0<K, b0<K, V>>) iVar, (b0<K, V>) obj);
            }

            @Override // com.google.common.collect.r0.j
            public p a() {
                return p.WEAK;
            }

            @Override // com.google.common.collect.r0.j
            public c0<K, V> a(r0<K, V, b0<K, V>, c0<K, V>> r0Var, int i2, int i3) {
                return new c0<>(r0Var, i2, i3);
            }

            @Override // com.google.common.collect.r0.j
            public b0<K, V> a(c0<K, V> c0Var, b0<K, V> b0Var, @NullableDecl b0<K, V> b0Var2) {
                if (b0Var.getKey() == null) {
                    return null;
                }
                return b0Var.a(((c0) c0Var).queueForKeys, b0Var2);
            }

            public void a(c0<K, V> c0Var, b0<K, V> b0Var, V v) {
                b0Var.a(v);
            }

            public b0<K, V> a(c0<K, V> c0Var, K k2, int i2, @NullableDecl b0<K, V> b0Var) {
                return new b0<>(((c0) c0Var).queueForKeys, k2, i2, b0Var);
            }
        }

        b0(ReferenceQueue<K> referenceQueue, K k2, int i2, @NullableDecl b0<K, V> b0Var) {
            super(referenceQueue, k2, i2, b0Var);
            this.f14148c = null;
        }

        void a(V v) {
            this.f14148c = v;
        }

        @Override // com.google.common.collect.r0.i
        @NullableDecl
        public V getValue() {
            return this.f14148c;
        }

        b0<K, V> a(ReferenceQueue<K> referenceQueue, b0<K, V> b0Var) {
            b0<K, V> b0Var2 = new b0<>(referenceQueue, getKey(), this.f14153a, b0Var);
            b0Var2.a(this.f14148c);
            return b0Var2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static abstract class c<K, V, E extends i<K, V, E>> implements i<K, V, E> {

        /* renamed from: a, reason: collision with root package name */
        final K f14150a;

        /* renamed from: b, reason: collision with root package name */
        final int f14151b;

        /* renamed from: c, reason: collision with root package name */
        @NullableDecl
        final E f14152c;

        c(K k2, int i2, @NullableDecl E e2) {
            this.f14150a = k2;
            this.f14151b = i2;
            this.f14152c = e2;
        }

        @Override // com.google.common.collect.r0.i
        public E a() {
            return this.f14152c;
        }

        @Override // com.google.common.collect.r0.i
        public int b() {
            return this.f14151b;
        }

        @Override // com.google.common.collect.r0.i
        public K getKey() {
            return this.f14150a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class c0<K, V> extends n<K, V, b0<K, V>, c0<K, V>> {
        private final ReferenceQueue<K> queueForKeys;

        c0(r0<K, V, b0<K, V>, c0<K, V>> r0Var, int i2, int i3) {
            super(r0Var, i2, i3);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.r0.n
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.r0.n
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.r0.n
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.r0.n
        public c0<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.r0.n
        public b0<K, V> castForTesting(i<K, V, ?> iVar) {
            return (b0) iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static abstract class d<K, V, E extends i<K, V, E>> extends WeakReference<K> implements i<K, V, E> {

        /* renamed from: a, reason: collision with root package name */
        final int f14153a;

        /* renamed from: b, reason: collision with root package name */
        @NullableDecl
        final E f14154b;

        d(ReferenceQueue<K> referenceQueue, K k2, int i2, @NullableDecl E e2) {
            super(k2, referenceQueue);
            this.f14153a = i2;
            this.f14154b = e2;
        }

        @Override // com.google.common.collect.r0.i
        public E a() {
            return this.f14154b;
        }

        @Override // com.google.common.collect.r0.i
        public int b() {
            return this.f14153a;
        }

        @Override // com.google.common.collect.r0.i
        public K getKey() {
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class d0<K, V> extends d<K, V, d0<K, V>> implements f0<K, V, d0<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        private volatile g0<K, V, d0<K, V>> f14155c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        public static final class a<K, V> implements j<K, V, d0<K, V>, e0<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            private static final a<?, ?> f14156a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f14156a;
            }

            @Override // com.google.common.collect.r0.j
            public p b() {
                return p.WEAK;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ i a(n nVar, Object obj, int i2, @NullableDecl i iVar) {
                return a((e0<e0<K, V>, V>) nVar, (e0<K, V>) obj, i2, (d0<e0<K, V>, V>) iVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ void a(n nVar, i iVar, Object obj) {
                a((e0<K, d0<K, V>>) nVar, (d0<K, d0<K, V>>) iVar, (d0<K, V>) obj);
            }

            @Override // com.google.common.collect.r0.j
            public p a() {
                return p.WEAK;
            }

            @Override // com.google.common.collect.r0.j
            public e0<K, V> a(r0<K, V, d0<K, V>, e0<K, V>> r0Var, int i2, int i3) {
                return new e0<>(r0Var, i2, i3);
            }

            @Override // com.google.common.collect.r0.j
            public d0<K, V> a(e0<K, V> e0Var, d0<K, V> d0Var, @NullableDecl d0<K, V> d0Var2) {
                if (d0Var.getKey() == null || n.isCollected(d0Var)) {
                    return null;
                }
                return d0Var.a(((e0) e0Var).queueForKeys, ((e0) e0Var).queueForValues, d0Var2);
            }

            public void a(e0<K, V> e0Var, d0<K, V> d0Var, V v) {
                d0Var.a((d0<K, V>) v, (ReferenceQueue<d0<K, V>>) ((e0) e0Var).queueForValues);
            }

            public d0<K, V> a(e0<K, V> e0Var, K k2, int i2, @NullableDecl d0<K, V> d0Var) {
                return new d0<>(((e0) e0Var).queueForKeys, k2, i2, d0Var);
            }
        }

        d0(ReferenceQueue<K> referenceQueue, K k2, int i2, @NullableDecl d0<K, V> d0Var) {
            super(referenceQueue, k2, i2, d0Var);
            this.f14155c = r0.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.r0.f0
        public g0<K, V, d0<K, V>> c() {
            return this.f14155c;
        }

        @Override // com.google.common.collect.r0.i
        public V getValue() {
            return this.f14155c.get();
        }

        d0<K, V> a(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, d0<K, V> d0Var) {
            d0<K, V> d0Var2 = new d0<>(referenceQueue, getKey(), this.f14153a, d0Var);
            d0Var2.f14155c = this.f14155c.a(referenceQueue2, d0Var2);
            return d0Var2;
        }

        void a(V v, ReferenceQueue<V> referenceQueue) {
            g0<K, V, d0<K, V>> g0Var = this.f14155c;
            this.f14155c = new h0(referenceQueue, v, this);
            g0Var.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class e implements i<Object, Object, e> {
        private e() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.r0.i
        public /* bridge */ /* synthetic */ e a() {
            a();
            throw null;
        }

        @Override // com.google.common.collect.r0.i
        public int b() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.r0.i
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.r0.i
        public Object getValue() {
            throw new AssertionError();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.r0.i
        public e a() {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class e0<K, V> extends n<K, V, d0<K, V>, e0<K, V>> {
        private final ReferenceQueue<K> queueForKeys;
        private final ReferenceQueue<V> queueForValues;

        e0(r0<K, V, d0<K, V>, e0<K, V>> r0Var, int i2, int i3) {
            super(r0Var, i2, i3);
            this.queueForKeys = new ReferenceQueue<>();
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.r0.n
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.r0.n
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.r0.n
        public g0<K, V, d0<K, V>> getWeakValueReferenceForTesting(i<K, V, ?> iVar) {
            return castForTesting((i) iVar).c();
        }

        @Override // com.google.common.collect.r0.n
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.r0.n
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.r0.n
        public g0<K, V, d0<K, V>> newWeakValueReferenceForTesting(i<K, V, ?> iVar, V v) {
            return new h0(this.queueForValues, v, castForTesting((i) iVar));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.r0.n
        public e0<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.r0.n
        public void setWeakValueReferenceForTesting(i<K, V, ?> iVar, g0<K, V, ? extends i<K, V, ?>> g0Var) {
            d0<K, V> castForTesting = castForTesting((i) iVar);
            g0 g0Var2 = ((d0) castForTesting).f14155c;
            ((d0) castForTesting).f14155c = g0Var;
            g0Var2.clear();
        }

        @Override // com.google.common.collect.r0.n
        public d0<K, V> castForTesting(i<K, V, ?> iVar) {
            return (d0) iVar;
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    final class f extends r0<K, V, E, S>.h<Map.Entry<K, V>> {
        f(r0 r0Var) {
            super();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            return b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public interface f0<K, V, E extends i<K, V, E>> extends i<K, V, E> {
        g0<K, V, E> c();
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    final class g extends m<Map.Entry<K, V>> {
        g() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            r0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = r0.this.get(key)) != null && r0.this.valueEquivalence().equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return r0.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(r0.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && r0.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return r0.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public interface g0<K, V, E extends i<K, V, E>> {
        g0<K, V, E> a(ReferenceQueue<V> referenceQueue, E e2);

        E a();

        void clear();

        @NullableDecl
        V get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class h0<K, V, E extends i<K, V, E>> extends WeakReference<V> implements g0<K, V, E> {

        /* renamed from: a, reason: collision with root package name */
        @Weak
        final E f14166a;

        h0(ReferenceQueue<V> referenceQueue, V v, E e2) {
            super(v, referenceQueue);
            this.f14166a = e2;
        }

        @Override // com.google.common.collect.r0.g0
        public E a() {
            return this.f14166a;
        }

        @Override // com.google.common.collect.r0.g0
        public g0<K, V, E> a(ReferenceQueue<V> referenceQueue, E e2) {
            return new h0(referenceQueue, get(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public interface i<K, V, E extends i<K, V, E>> {
        E a();

        int b();

        K getKey();

        V getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public final class i0 extends com.google.common.collect.c<K, V> {

        /* renamed from: e, reason: collision with root package name */
        final K f14167e;

        /* renamed from: f, reason: collision with root package name */
        V f14168f;

        i0(K k2, V v) {
            this.f14167e = k2;
            this.f14168f = v;
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public boolean equals(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f14167e.equals(entry.getKey()) && this.f14168f.equals(entry.getValue());
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public K getKey() {
            return this.f14167e;
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public V getValue() {
            return this.f14168f;
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public int hashCode() {
            return this.f14167e.hashCode() ^ this.f14168f.hashCode();
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) r0.this.put(this.f14167e, v);
            this.f14168f = v;
            return v2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public interface j<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> {
        E a(S s, E e2, @NullableDecl E e3);

        E a(S s, K k2, int i2, @NullableDecl E e2);

        S a(r0<K, V, E, S> r0Var, int i2, int i3);

        p a();

        void a(S s, E e2, V v);

        p b();
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    final class k extends r0<K, V, E, S>.h<K> {
        k(r0 r0Var) {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return b().getKey();
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    final class l extends m<K> {
        l() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            r0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return r0.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return r0.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new k(r0.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return r0.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return r0.this.size();
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    private static abstract class m<E> extends AbstractSet<E> {
        private m() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return r0.a(this).toArray();
        }

        /* synthetic */ m(a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) r0.a(this).toArray(tArr);
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    private static final class o<K, V> extends b<K, V> {
        private static final long serialVersionUID = 3;

        o(p pVar, p pVar2, e.i.c.a.b<Object> bVar, e.i.c.a.b<Object> bVar2, int i2, ConcurrentMap<K, V> concurrentMap) {
            super(pVar, pVar2, bVar, bVar2, i2, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).f();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static abstract class p {
        public static final p STRONG = new a("STRONG", 0);
        public static final p WEAK = new b("WEAK", 1);

        /* renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ p[] f14171e = {STRONG, WEAK};

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        enum a extends p {
            a(String str, int i2) {
                super(str, i2, null);
            }

            @Override // com.google.common.collect.r0.p
            e.i.c.a.b<Object> defaultEquivalence() {
                return e.i.c.a.b.equals();
            }
        }

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        enum b extends p {
            b(String str, int i2) {
                super(str, i2, null);
            }

            @Override // com.google.common.collect.r0.p
            e.i.c.a.b<Object> defaultEquivalence() {
                return e.i.c.a.b.identity();
            }
        }

        private p(String str, int i2) {
        }

        public static p valueOf(String str) {
            return (p) Enum.valueOf(p.class, str);
        }

        public static p[] values() {
            return (p[]) f14171e.clone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract e.i.c.a.b<Object> defaultEquivalence();

        /* synthetic */ p(String str, int i2, a aVar) {
            this(str, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class q<K> extends c<K, q0.a, q<K>> implements w<K, q0.a, q<K>> {

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        static final class a<K> implements j<K, q0.a, q<K>, r<K>> {

            /* renamed from: a, reason: collision with root package name */
            private static final a<?> f14172a = new a<>();

            a() {
            }

            static <K> a<K> c() {
                return (a<K>) f14172a;
            }

            @Override // com.google.common.collect.r0.j
            public void a(r<K> rVar, q<K> qVar, q0.a aVar) {
            }

            @Override // com.google.common.collect.r0.j
            public p b() {
                return p.STRONG;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ i a(n nVar, Object obj, int i2, @NullableDecl i iVar) {
                return a((r<r<K>>) nVar, (r<K>) obj, i2, (q<r<K>>) iVar);
            }

            @Override // com.google.common.collect.r0.j
            public p a() {
                return p.STRONG;
            }

            @Override // com.google.common.collect.r0.j
            public r<K> a(r0<K, q0.a, q<K>, r<K>> r0Var, int i2, int i3) {
                return new r<>(r0Var, i2, i3);
            }

            @Override // com.google.common.collect.r0.j
            public q<K> a(r<K> rVar, q<K> qVar, @NullableDecl q<K> qVar2) {
                return qVar.a(qVar2);
            }

            public q<K> a(r<K> rVar, K k2, int i2, @NullableDecl q<K> qVar) {
                return new q<>(k2, i2, qVar);
            }
        }

        q(K k2, int i2, @NullableDecl q<K> qVar) {
            super(k2, i2, qVar);
        }

        q<K> a(q<K> qVar) {
            return new q<>(this.f14150a, this.f14151b, qVar);
        }

        @Override // com.google.common.collect.r0.i
        public q0.a getValue() {
            return q0.a.VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class r<K> extends n<K, q0.a, q<K>, r<K>> {
        r(r0<K, q0.a, q<K>, r<K>> r0Var, int i2, int i3) {
            super(r0Var, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.r0.n
        public r<K> self() {
            return this;
        }

        @Override // com.google.common.collect.r0.n
        public q<K> castForTesting(i<K, q0.a, ?> iVar) {
            return (q) iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class s<K, V> extends c<K, V, s<K, V>> implements w<K, V, s<K, V>> {

        /* renamed from: d, reason: collision with root package name */
        @NullableDecl
        private volatile V f14173d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        public static final class a<K, V> implements j<K, V, s<K, V>, t<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            private static final a<?, ?> f14174a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f14174a;
            }

            @Override // com.google.common.collect.r0.j
            public p b() {
                return p.STRONG;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ i a(n nVar, Object obj, int i2, @NullableDecl i iVar) {
                return a((t<t<K, V>, V>) nVar, (t<K, V>) obj, i2, (s<t<K, V>, V>) iVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ void a(n nVar, i iVar, Object obj) {
                a((t<K, s<K, V>>) nVar, (s<K, s<K, V>>) iVar, (s<K, V>) obj);
            }

            @Override // com.google.common.collect.r0.j
            public p a() {
                return p.STRONG;
            }

            @Override // com.google.common.collect.r0.j
            public t<K, V> a(r0<K, V, s<K, V>, t<K, V>> r0Var, int i2, int i3) {
                return new t<>(r0Var, i2, i3);
            }

            @Override // com.google.common.collect.r0.j
            public s<K, V> a(t<K, V> tVar, s<K, V> sVar, @NullableDecl s<K, V> sVar2) {
                return sVar.a((s) sVar2);
            }

            public void a(t<K, V> tVar, s<K, V> sVar, V v) {
                sVar.a((s<K, V>) v);
            }

            public s<K, V> a(t<K, V> tVar, K k2, int i2, @NullableDecl s<K, V> sVar) {
                return new s<>(k2, i2, sVar);
            }
        }

        s(K k2, int i2, @NullableDecl s<K, V> sVar) {
            super(k2, i2, sVar);
            this.f14173d = null;
        }

        void a(V v) {
            this.f14173d = v;
        }

        @Override // com.google.common.collect.r0.i
        @NullableDecl
        public V getValue() {
            return this.f14173d;
        }

        s<K, V> a(s<K, V> sVar) {
            s<K, V> sVar2 = new s<>(this.f14150a, this.f14151b, sVar);
            sVar2.f14173d = this.f14173d;
            return sVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class t<K, V> extends n<K, V, s<K, V>, t<K, V>> {
        t(r0<K, V, s<K, V>, t<K, V>> r0Var, int i2, int i3) {
            super(r0Var, i2, i3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.r0.n
        public t<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.r0.n
        public s<K, V> castForTesting(i<K, V, ?> iVar) {
            return (s) iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class u<K, V> extends c<K, V, u<K, V>> implements f0<K, V, u<K, V>> {

        /* renamed from: d, reason: collision with root package name */
        private volatile g0<K, V, u<K, V>> f14175d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        public static final class a<K, V> implements j<K, V, u<K, V>, v<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            private static final a<?, ?> f14176a = new a<>();

            a() {
            }

            static <K, V> a<K, V> c() {
                return (a<K, V>) f14176a;
            }

            @Override // com.google.common.collect.r0.j
            public p b() {
                return p.WEAK;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ i a(n nVar, Object obj, int i2, @NullableDecl i iVar) {
                return a((v<v<K, V>, V>) nVar, (v<K, V>) obj, i2, (u<v<K, V>, V>) iVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ void a(n nVar, i iVar, Object obj) {
                a((v<K, u<K, V>>) nVar, (u<K, u<K, V>>) iVar, (u<K, V>) obj);
            }

            @Override // com.google.common.collect.r0.j
            public p a() {
                return p.STRONG;
            }

            @Override // com.google.common.collect.r0.j
            public v<K, V> a(r0<K, V, u<K, V>, v<K, V>> r0Var, int i2, int i3) {
                return new v<>(r0Var, i2, i3);
            }

            @Override // com.google.common.collect.r0.j
            public u<K, V> a(v<K, V> vVar, u<K, V> uVar, @NullableDecl u<K, V> uVar2) {
                if (n.isCollected(uVar)) {
                    return null;
                }
                return uVar.a(((v) vVar).queueForValues, uVar2);
            }

            public void a(v<K, V> vVar, u<K, V> uVar, V v) {
                uVar.a((u<K, V>) v, (ReferenceQueue<u<K, V>>) ((v) vVar).queueForValues);
            }

            public u<K, V> a(v<K, V> vVar, K k2, int i2, @NullableDecl u<K, V> uVar) {
                return new u<>(k2, i2, uVar);
            }
        }

        u(K k2, int i2, @NullableDecl u<K, V> uVar) {
            super(k2, i2, uVar);
            this.f14175d = r0.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.r0.f0
        public g0<K, V, u<K, V>> c() {
            return this.f14175d;
        }

        @Override // com.google.common.collect.r0.i
        public V getValue() {
            return this.f14175d.get();
        }

        void a(V v, ReferenceQueue<V> referenceQueue) {
            g0<K, V, u<K, V>> g0Var = this.f14175d;
            this.f14175d = new h0(referenceQueue, v, this);
            g0Var.clear();
        }

        u<K, V> a(ReferenceQueue<V> referenceQueue, u<K, V> uVar) {
            u<K, V> uVar2 = new u<>(this.f14150a, this.f14151b, uVar);
            uVar2.f14175d = this.f14175d.a(referenceQueue, uVar2);
            return uVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class v<K, V> extends n<K, V, u<K, V>, v<K, V>> {
        private final ReferenceQueue<V> queueForValues;

        v(r0<K, V, u<K, V>, v<K, V>> r0Var, int i2, int i3) {
            super(r0Var, i2, i3);
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.r0.n
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.r0.n
        public g0<K, V, u<K, V>> getWeakValueReferenceForTesting(i<K, V, ?> iVar) {
            return castForTesting((i) iVar).c();
        }

        @Override // com.google.common.collect.r0.n
        void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.r0.n
        void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.r0.n
        public g0<K, V, u<K, V>> newWeakValueReferenceForTesting(i<K, V, ?> iVar, V v) {
            return new h0(this.queueForValues, v, castForTesting((i) iVar));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.r0.n
        public v<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.r0.n
        public void setWeakValueReferenceForTesting(i<K, V, ?> iVar, g0<K, V, ? extends i<K, V, ?>> g0Var) {
            u<K, V> castForTesting = castForTesting((i) iVar);
            g0 g0Var2 = ((u) castForTesting).f14175d;
            ((u) castForTesting).f14175d = g0Var;
            g0Var2.clear();
        }

        @Override // com.google.common.collect.r0.n
        public u<K, V> castForTesting(i<K, V, ?> iVar) {
            return (u) iVar;
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    interface w<K, V, E extends i<K, V, E>> extends i<K, V, E> {
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    final class x extends r0<K, V, E, S>.h<V> {
        x(r0 r0Var) {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return b().getValue();
        }
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    final class y extends AbstractCollection<V> {
        y() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            r0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return r0.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return r0.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new x(r0.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return r0.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return r0.a(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) r0.a(this).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static final class z<K> extends d<K, q0.a, z<K>> implements w<K, q0.a, z<K>> {

        /* compiled from: MapMakerInternalMap.java */
        /* loaded from: classes.dex */
        static final class a<K> implements j<K, q0.a, z<K>, a0<K>> {

            /* renamed from: a, reason: collision with root package name */
            private static final a<?> f14178a = new a<>();

            a() {
            }

            static <K> a<K> c() {
                return (a<K>) f14178a;
            }

            @Override // com.google.common.collect.r0.j
            public void a(a0<K> a0Var, z<K> zVar, q0.a aVar) {
            }

            @Override // com.google.common.collect.r0.j
            public p b() {
                return p.STRONG;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.r0.j
            public /* bridge */ /* synthetic */ i a(n nVar, Object obj, int i2, @NullableDecl i iVar) {
                return a((a0<a0<K>>) nVar, (a0<K>) obj, i2, (z<a0<K>>) iVar);
            }

            @Override // com.google.common.collect.r0.j
            public p a() {
                return p.WEAK;
            }

            @Override // com.google.common.collect.r0.j
            public a0<K> a(r0<K, q0.a, z<K>, a0<K>> r0Var, int i2, int i3) {
                return new a0<>(r0Var, i2, i3);
            }

            @Override // com.google.common.collect.r0.j
            public z<K> a(a0<K> a0Var, z<K> zVar, @NullableDecl z<K> zVar2) {
                if (zVar.getKey() == null) {
                    return null;
                }
                return zVar.a(((a0) a0Var).queueForKeys, zVar2);
            }

            public z<K> a(a0<K> a0Var, K k2, int i2, @NullableDecl z<K> zVar) {
                return new z<>(((a0) a0Var).queueForKeys, k2, i2, zVar);
            }
        }

        z(ReferenceQueue<K> referenceQueue, K k2, int i2, @NullableDecl z<K> zVar) {
            super(referenceQueue, k2, i2, zVar);
        }

        z<K> a(ReferenceQueue<K> referenceQueue, z<K> zVar) {
            return new z<>(referenceQueue, getKey(), this.f14153a, zVar);
        }

        @Override // com.google.common.collect.r0.i
        public q0.a getValue() {
            return q0.a.VALUE;
        }
    }

    private r0(q0 q0Var, j<K, V, E, S> jVar) {
        this.concurrencyLevel = Math.min(q0Var.a(), 65536);
        this.keyEquivalence = q0Var.c();
        this.entryHelper = jVar;
        int min = Math.min(q0Var.b(), MAXIMUM_CAPACITY);
        int i2 = 0;
        int i3 = 1;
        int i4 = 1;
        int i5 = 0;
        while (i4 < this.concurrencyLevel) {
            i5++;
            i4 <<= 1;
        }
        this.segmentShift = 32 - i5;
        this.segmentMask = i4 - 1;
        this.segments = newSegmentArray(i4);
        int i6 = min / i4;
        while (i3 < (i4 * i6 < min ? i6 + 1 : i6)) {
            i3 <<= 1;
        }
        while (true) {
            n<K, V, E, S>[] nVarArr = this.segments;
            if (i2 >= nVarArr.length) {
                return;
            }
            nVarArr[i2] = createSegment(i3, -1);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> a(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        m0.a(arrayList, collection.iterator());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> r0<K, V, ? extends i<K, V, ?>, ?> create(q0 q0Var) {
        if (q0Var.d() == p.STRONG && q0Var.e() == p.STRONG) {
            return new r0<>(q0Var, s.a.c());
        }
        if (q0Var.d() == p.STRONG && q0Var.e() == p.WEAK) {
            return new r0<>(q0Var, u.a.c());
        }
        if (q0Var.d() == p.WEAK && q0Var.e() == p.STRONG) {
            return new r0<>(q0Var, b0.a.c());
        }
        if (q0Var.d() == p.WEAK && q0Var.e() == p.WEAK) {
            return new r0<>(q0Var, d0.a.c());
        }
        throw new AssertionError();
    }

    static <K> r0<K, q0.a, ? extends i<K, q0.a, ?>, ?> createWithDummyValues(q0 q0Var) {
        if (q0Var.d() == p.STRONG && q0Var.e() == p.STRONG) {
            return new r0<>(q0Var, q.a.c());
        }
        if (q0Var.d() == p.WEAK && q0Var.e() == p.STRONG) {
            return new r0<>(q0Var, z.a.c());
        }
        if (q0Var.e() == p.WEAK) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    static int rehash(int i2) {
        int i3 = i2 + ((i2 << 15) ^ (-12931));
        int i4 = i3 ^ (i3 >>> 10);
        int i5 = i4 + (i4 << 3);
        int i6 = i5 ^ (i5 >>> 6);
        int i7 = i6 + (i6 << 2) + (i6 << 14);
        return i7 ^ (i7 >>> 16);
    }

    static <K, V, E extends i<K, V, E>> g0<K, V, E> unsetWeakValueReference() {
        return (g0<K, V, E>) UNSET_WEAK_VALUE_REFERENCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (n<K, V, E, S> nVar : this.segments) {
            nVar.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        n<K, V, E, S>[] nVarArr = this.segments;
        long j2 = -1;
        int i2 = 0;
        while (i2 < 3) {
            long j3 = 0;
            for (v vVar : nVarArr) {
                int i3 = vVar.count;
                AtomicReferenceArray<E> atomicReferenceArray = vVar.table;
                for (int i4 = 0; i4 < atomicReferenceArray.length(); i4++) {
                    for (E e2 = atomicReferenceArray.get(i4); e2 != null; e2 = e2.a()) {
                        Object liveValue = vVar.getLiveValue(e2);
                        if (liveValue != null && valueEquivalence().equivalent(obj, liveValue)) {
                            return true;
                        }
                    }
                }
                j3 += vVar.modCount;
            }
            if (j3 == j2) {
                return false;
            }
            i2++;
            j2 = j3;
        }
        return false;
    }

    @VisibleForTesting
    E copyEntry(E e2, E e3) {
        return segmentFor(e2.b()).copyEntry(e2, e3);
    }

    n<K, V, E, S> createSegment(int i2, int i3) {
        return this.entryHelper.a(this, i2, i3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.entrySet = gVar;
        return gVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    E getEntry(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
    }

    V getLiveValue(E e2) {
        if (e2.getKey() == null) {
            return null;
        }
        return (V) e2.getValue();
    }

    int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        n<K, V, E, S>[] nVarArr = this.segments;
        long j2 = 0;
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (nVarArr[i2].count != 0) {
                return false;
            }
            j2 += nVarArr[i2].modCount;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < nVarArr.length; i3++) {
            if (nVarArr[i3].count != 0) {
                return false;
            }
            j2 -= nVarArr[i3].modCount;
        }
        return j2 == 0;
    }

    @VisibleForTesting
    boolean isLiveForTesting(i<K, V, ?> iVar) {
        return segmentFor(iVar.b()).getLiveValueForTesting(iVar) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        l lVar = new l();
        this.keySet = lVar;
        return lVar;
    }

    @VisibleForTesting
    p keyStrength() {
        return this.entryHelper.a();
    }

    final n<K, V, E, S>[] newSegmentArray(int i2) {
        return new n[i2];
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V put(K k2, V v2) {
        e.i.c.a.j.a(k2);
        e.i.c.a.j.a(v2);
        int hash = hash(k2);
        return segmentFor(hash).put(k2, hash, v2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V putIfAbsent(K k2, V v2) {
        e.i.c.a.j.a(k2);
        e.i.c.a.j.a(v2);
        int hash = hash(k2);
        return segmentFor(hash).put(k2, hash, v2, true);
    }

    void reclaimKey(E e2) {
        int b2 = e2.b();
        segmentFor(b2).reclaimKey(e2, b2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void reclaimValue(g0<K, V, E> g0Var) {
        E a2 = g0Var.a();
        int b2 = a2.b();
        segmentFor(b2).reclaimValue(a2.getKey(), b2, g0Var);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean replace(K k2, @NullableDecl V v2, V v3) {
        e.i.c.a.j.a(k2);
        e.i.c.a.j.a(v3);
        if (v2 == null) {
            return false;
        }
        int hash = hash(k2);
        return segmentFor(hash).replace(k2, hash, v2, v3);
    }

    n<K, V, E, S> segmentFor(int i2) {
        return this.segments[(i2 >>> this.segmentShift) & this.segmentMask];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j2 = 0;
        for (int i2 = 0; i2 < this.segments.length; i2++) {
            j2 += r0[i2].count;
        }
        return e.i.c.c.a.a(j2);
    }

    @VisibleForTesting
    e.i.c.a.b<Object> valueEquivalence() {
        return this.entryHelper.b().defaultEquivalence();
    }

    @VisibleForTesting
    p valueStrength() {
        return this.entryHelper.b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        y yVar = new y();
        this.values = yVar;
        return yVar;
    }

    Object writeReplace() {
        return new o(this.entryHelper.a(), this.entryHelper.b(), this.keyEquivalence, this.entryHelper.b().defaultEquivalence(), this.concurrencyLevel, this);
    }

    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    static abstract class b<K, V> extends com.google.common.collect.r<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;
        transient ConcurrentMap<K, V> delegate;
        final e.i.c.a.b<Object> keyEquivalence;
        final p keyStrength;
        final e.i.c.a.b<Object> valueEquivalence;
        final p valueStrength;

        b(p pVar, p pVar2, e.i.c.a.b<Object> bVar, e.i.c.a.b<Object> bVar2, int i2, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = pVar;
            this.valueStrength = pVar2;
            this.keyEquivalence = bVar;
            this.valueEquivalence = bVar2;
            this.concurrencyLevel = i2;
            this.delegate = concurrentMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void readEntries(ObjectInputStream objectInputStream) {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject == null) {
                    return;
                }
                this.delegate.put(readObject, objectInputStream.readObject());
            }
        }

        q0 readMapMaker(ObjectInputStream objectInputStream) {
            int readInt = objectInputStream.readInt();
            q0 q0Var = new q0();
            q0Var.b(readInt);
            q0Var.a(this.keyStrength);
            q0Var.b(this.valueStrength);
            q0Var.a(this.keyEquivalence);
            q0Var.a(this.concurrencyLevel);
            return q0Var;
        }

        void writeMapTo(ObjectOutputStream objectOutputStream) {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.r, com.google.common.collect.s, com.google.common.collect.t
        public ConcurrentMap<K, V> delegate() {
            return this.delegate;
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @CanIgnoreReturnValue
    public V replace(K k2, V v2) {
        e.i.c.a.j.a(k2);
        e.i.c.a.j.a(v2);
        int hash = hash(k2);
        return segmentFor(hash).replace(k2, hash, v2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public abstract class h<T> implements Iterator<T> {

        /* renamed from: e, reason: collision with root package name */
        int f14158e;

        /* renamed from: f, reason: collision with root package name */
        int f14159f = -1;

        /* renamed from: g, reason: collision with root package name */
        @MonotonicNonNullDecl
        n<K, V, E, S> f14160g;

        /* renamed from: h, reason: collision with root package name */
        @MonotonicNonNullDecl
        AtomicReferenceArray<E> f14161h;

        /* renamed from: i, reason: collision with root package name */
        @NullableDecl
        E f14162i;

        /* renamed from: j, reason: collision with root package name */
        @NullableDecl
        r0<K, V, E, S>.i0 f14163j;

        /* renamed from: k, reason: collision with root package name */
        @NullableDecl
        r0<K, V, E, S>.i0 f14164k;

        h() {
            this.f14158e = r0.this.segments.length - 1;
            a();
        }

        final void a() {
            this.f14163j = null;
            if (c() || d()) {
                return;
            }
            while (true) {
                int i2 = this.f14158e;
                if (i2 < 0) {
                    return;
                }
                n<K, V, E, S>[] nVarArr = r0.this.segments;
                this.f14158e = i2 - 1;
                this.f14160g = nVarArr[i2];
                if (this.f14160g.count != 0) {
                    this.f14161h = this.f14160g.table;
                    this.f14159f = this.f14161h.length() - 1;
                    if (d()) {
                        return;
                    }
                }
            }
        }

        r0<K, V, E, S>.i0 b() {
            r0<K, V, E, S>.i0 i0Var = this.f14163j;
            if (i0Var != null) {
                this.f14164k = i0Var;
                a();
                return this.f14164k;
            }
            throw new NoSuchElementException();
        }

        boolean c() {
            E e2 = this.f14162i;
            if (e2 == null) {
                return false;
            }
            while (true) {
                this.f14162i = (E) e2.a();
                E e3 = this.f14162i;
                if (e3 == null) {
                    return false;
                }
                if (a(e3)) {
                    return true;
                }
                e2 = this.f14162i;
            }
        }

        boolean d() {
            while (true) {
                int i2 = this.f14159f;
                if (i2 < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f14161h;
                this.f14159f = i2 - 1;
                E e2 = atomicReferenceArray.get(i2);
                this.f14162i = e2;
                if (e2 != null && (a(this.f14162i) || c())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14163j != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.collect.i.a(this.f14164k != null);
            r0.this.remove(this.f14164k.getKey());
            this.f14164k = null;
        }

        boolean a(E e2) {
            boolean z;
            try {
                Object key = e2.getKey();
                Object liveValue = r0.this.getLiveValue(e2);
                if (liveValue != null) {
                    this.f14163j = new i0(key, liveValue);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            } finally {
                this.f14160g.postReadCleanup();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MapMakerInternalMap.java */
    /* loaded from: classes.dex */
    public static abstract class n<K, V, E extends i<K, V, E>, S extends n<K, V, E, S>> extends ReentrantLock {
        volatile int count;

        @Weak
        final r0<K, V, E, S> map;
        final int maxSegmentSize;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();

        @MonotonicNonNullDecl
        volatile AtomicReferenceArray<E> table;
        int threshold;

        n(r0<K, V, E, S> r0Var, int i2, int i3) {
            this.map = r0Var;
            this.maxSegmentSize = i3;
            initTable(newEntryArray(i2));
        }

        static <K, V, E extends i<K, V, E>> boolean isCollected(E e2) {
            return e2.getValue() == null;
        }

        abstract E castForTesting(i<K, V, ?> iVar);

        void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        boolean clearValueForTesting(K k2, int i2, g0<K, V, ? extends i<K, V, ?>> g0Var) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i2;
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    Object key = iVar2.getKey();
                    if (iVar2.b() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        if (((f0) iVar2).c() != g0Var) {
                            return false;
                        }
                        atomicReferenceArray.set(length, removeFromChain(iVar, iVar2));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        boolean containsKey(Object obj, int i2) {
            try {
                boolean z = false;
                if (this.count == 0) {
                    return false;
                }
                E liveEntry = getLiveEntry(obj, i2);
                if (liveEntry != null) {
                    if (liveEntry.getValue() != null) {
                        z = true;
                    }
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @VisibleForTesting
        boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        for (E e2 = atomicReferenceArray.get(i2); e2 != null; e2 = e2.a()) {
                            Object liveValue = getLiveValue(e2);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                postReadCleanup();
            }
        }

        E copyEntry(E e2, E e3) {
            return this.map.entryHelper.a((j<K, V, E, S>) self(), (i) e2, (i) e3);
        }

        E copyForTesting(i<K, V, ?> iVar, @NullableDecl i<K, V, ?> iVar2) {
            return this.map.entryHelper.a((j<K, V, E, S>) self(), (i) castForTesting(iVar), (i) castForTesting(iVar2));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i2 = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.reclaimKey((i) poll);
                i2++;
            } while (i2 != 16);
        }

        @GuardedBy("this")
        void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i2 = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll == null) {
                    return;
                }
                this.map.reclaimValue((g0) poll);
                i2++;
            } while (i2 != 16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= r0.MAXIMUM_CAPACITY) {
                return;
            }
            int i2 = this.count;
            g.c.a.f.g.i iVar = (AtomicReferenceArray<E>) newEntryArray(length << 1);
            this.threshold = (iVar.length() * 3) / 4;
            int length2 = iVar.length() - 1;
            for (int i3 = 0; i3 < length; i3++) {
                E e2 = atomicReferenceArray.get(i3);
                if (e2 != null) {
                    i a2 = e2.a();
                    int b2 = e2.b() & length2;
                    if (a2 == null) {
                        iVar.set(b2, e2);
                    } else {
                        i iVar2 = e2;
                        while (a2 != null) {
                            int b3 = a2.b() & length2;
                            if (b3 != b2) {
                                iVar2 = a2;
                                b2 = b3;
                            }
                            a2 = a2.a();
                        }
                        iVar.set(b2, iVar2);
                        while (e2 != iVar2) {
                            int b4 = e2.b() & length2;
                            i copyEntry = copyEntry(e2, (i) iVar.get(b4));
                            if (copyEntry != null) {
                                iVar.set(b4, copyEntry);
                            } else {
                                i2--;
                            }
                            e2 = e2.a();
                        }
                    }
                }
            }
            this.table = iVar;
            this.count = i2;
        }

        V get(Object obj, int i2) {
            try {
                E liveEntry = getLiveEntry(obj, i2);
                if (liveEntry == null) {
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                return v;
            } finally {
                postReadCleanup();
            }
        }

        E getEntry(Object obj, int i2) {
            if (this.count == 0) {
                return null;
            }
            for (E first = getFirst(i2); first != null; first = (E) first.a()) {
                if (first.b() == i2) {
                    Object key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        E getFirst(int i2) {
            return this.table.get(i2 & (r0.length() - 1));
        }

        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        E getLiveEntry(Object obj, int i2) {
            return getEntry(obj, i2);
        }

        @NullableDecl
        V getLiveValue(E e2) {
            if (e2.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e2.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        @NullableDecl
        V getLiveValueForTesting(i<K, V, ?> iVar) {
            return getLiveValue(castForTesting(iVar));
        }

        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        g0<K, V, E> getWeakValueReferenceForTesting(i<K, V, ?> iVar) {
            throw new AssertionError();
        }

        void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            int i2 = this.threshold;
            if (i2 == this.maxSegmentSize) {
                this.threshold = i2 + 1;
            }
            this.table = atomicReferenceArray;
        }

        void maybeClearReferenceQueues() {
        }

        @GuardedBy("this")
        void maybeDrainReferenceQueues() {
        }

        AtomicReferenceArray<E> newEntryArray(int i2) {
            return new AtomicReferenceArray<>(i2);
        }

        E newEntryForTesting(K k2, int i2, @NullableDecl i<K, V, ?> iVar) {
            return this.map.entryHelper.a(self(), k2, i2, castForTesting(iVar));
        }

        g0<K, V, E> newWeakValueReferenceForTesting(i<K, V, ?> iVar, V v) {
            throw new AssertionError();
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        @GuardedBy("this")
        void preWriteCleanup() {
            runLockedCleanup();
        }

        /* JADX WARN: Multi-variable type inference failed */
        V put(K k2, int i2, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i3 = this.count + 1;
                if (i3 > this.threshold) {
                    expand();
                    i3 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i2;
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    Object key = iVar2.getKey();
                    if (iVar2.b() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        V v2 = (V) iVar2.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(iVar2, v);
                            this.count = this.count;
                            return null;
                        }
                        if (z) {
                            return v2;
                        }
                        this.modCount++;
                        setValue(iVar2, v);
                        return v2;
                    }
                }
                this.modCount++;
                i a2 = this.map.entryHelper.a(self(), k2, i2, iVar);
                setValue(a2, v);
                atomicReferenceArray.set(length, a2);
                this.count = i3;
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        boolean reclaimKey(E e2, int i2) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i2 & (atomicReferenceArray.length() - 1);
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    if (iVar2 == e2) {
                        this.modCount++;
                        i removeFromChain = removeFromChain(iVar, iVar2);
                        int i3 = this.count - 1;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i3;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        boolean reclaimValue(K k2, int i2, g0<K, V, E> g0Var) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i2;
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    Object key = iVar2.getKey();
                    if (iVar2.b() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        if (((f0) iVar2).c() != g0Var) {
                            return false;
                        }
                        this.modCount++;
                        i removeFromChain = removeFromChain(iVar, iVar2);
                        int i3 = this.count - 1;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i3;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        V remove(Object obj, int i2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i2;
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    Object key = iVar2.getKey();
                    if (iVar2.b() == i2 && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) iVar2.getValue();
                        if (v == null && !isCollected(iVar2)) {
                            return null;
                        }
                        this.modCount++;
                        i removeFromChain = removeFromChain(iVar, iVar2);
                        int i3 = this.count - 1;
                        atomicReferenceArray.set(length, removeFromChain);
                        this.count = i3;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @GuardedBy("this")
        boolean removeEntryForTesting(E e2) {
            int b2 = e2.b();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = b2 & (atomicReferenceArray.length() - 1);
            i iVar = (i) atomicReferenceArray.get(length);
            for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                if (iVar2 == e2) {
                    this.modCount++;
                    i removeFromChain = removeFromChain(iVar, iVar2);
                    int i2 = this.count - 1;
                    atomicReferenceArray.set(length, removeFromChain);
                    this.count = i2;
                    return true;
                }
            }
            return false;
        }

        @GuardedBy("this")
        E removeFromChain(E e2, E e3) {
            int i2 = this.count;
            E e4 = (E) e3.a();
            while (e2 != e3) {
                E copyEntry = copyEntry(e2, e4);
                if (copyEntry != null) {
                    e4 = copyEntry;
                } else {
                    i2--;
                }
                e2 = (E) e2.a();
            }
            this.count = i2;
            return e4;
        }

        E removeFromChainForTesting(i<K, V, ?> iVar, i<K, V, ?> iVar2) {
            return removeFromChain(castForTesting(iVar), castForTesting(iVar2));
        }

        @CanIgnoreReturnValue
        boolean removeTableEntryForTesting(i<K, V, ?> iVar) {
            return removeEntryForTesting(castForTesting(iVar));
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean replace(K k2, int i2, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i2;
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    Object key = iVar2.getKey();
                    if (iVar2.b() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        Object value = iVar2.getValue();
                        if (value == null) {
                            if (isCollected(iVar2)) {
                                this.modCount++;
                                i removeFromChain = removeFromChain(iVar, iVar2);
                                int i3 = this.count - 1;
                                atomicReferenceArray.set(length, removeFromChain);
                                this.count = i3;
                            }
                            return false;
                        }
                        if (!this.map.valueEquivalence().equivalent(v, value)) {
                            return false;
                        }
                        this.modCount++;
                        setValue(iVar2, v2);
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        void runCleanup() {
            runLockedCleanup();
        }

        void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        abstract S self();

        void setTableEntryForTesting(int i2, i<K, V, ?> iVar) {
            this.table.set(i2, castForTesting(iVar));
        }

        void setValue(E e2, V v) {
            this.map.entryHelper.a((j<K, V, E, S>) self(), (S) e2, (E) v);
        }

        void setValueForTesting(i<K, V, ?> iVar, V v) {
            this.map.entryHelper.a((j<K, V, E, S>) self(), (S) castForTesting(iVar), (E) v);
        }

        void setWeakValueReferenceForTesting(i<K, V, ?> iVar, g0<K, V, ? extends i<K, V, ?>> g0Var) {
            throw new AssertionError();
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        
            if (r8.map.valueEquivalence().equivalent(r11, r4.getValue()) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        
            r8.modCount++;
            r9 = removeFromChain(r3, r4);
            r10 = r8.count - 1;
            r0.set(r1, r9);
            r8.count = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        
            if (isCollected(r4) == false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean remove(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.preWriteCleanup()     // Catch: java.lang.Throwable -> L69
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.r0$i<K, V, E>> r0 = r8.table     // Catch: java.lang.Throwable -> L69
                int r1 = r0.length()     // Catch: java.lang.Throwable -> L69
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.r0$i r3 = (com.google.common.collect.r0.i) r3     // Catch: java.lang.Throwable -> L69
                r4 = r3
            L16:
                r5 = 0
                if (r4 == 0) goto L65
                java.lang.Object r6 = r4.getKey()     // Catch: java.lang.Throwable -> L69
                int r7 = r4.b()     // Catch: java.lang.Throwable -> L69
                if (r7 != r10) goto L60
                if (r6 == 0) goto L60
                com.google.common.collect.r0<K, V, E extends com.google.common.collect.r0$i<K, V, E>, S extends com.google.common.collect.r0$n<K, V, E, S>> r7 = r8.map     // Catch: java.lang.Throwable -> L69
                e.i.c.a.b<java.lang.Object> r7 = r7.keyEquivalence     // Catch: java.lang.Throwable -> L69
                boolean r6 = r7.equivalent(r9, r6)     // Catch: java.lang.Throwable -> L69
                if (r6 == 0) goto L60
                java.lang.Object r9 = r4.getValue()     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.r0<K, V, E extends com.google.common.collect.r0$i<K, V, E>, S extends com.google.common.collect.r0$n<K, V, E, S>> r10 = r8.map     // Catch: java.lang.Throwable -> L69
                e.i.c.a.b r10 = r10.valueEquivalence()     // Catch: java.lang.Throwable -> L69
                boolean r9 = r10.equivalent(r11, r9)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L41
                r5 = 1
                goto L47
            L41:
                boolean r9 = isCollected(r4)     // Catch: java.lang.Throwable -> L69
                if (r9 == 0) goto L5c
            L47:
                int r9 = r8.modCount     // Catch: java.lang.Throwable -> L69
                int r9 = r9 + r2
                r8.modCount = r9     // Catch: java.lang.Throwable -> L69
                com.google.common.collect.r0$i r9 = r8.removeFromChain(r3, r4)     // Catch: java.lang.Throwable -> L69
                int r10 = r8.count     // Catch: java.lang.Throwable -> L69
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: java.lang.Throwable -> L69
                r8.count = r10     // Catch: java.lang.Throwable -> L69
                r8.unlock()
                return r5
            L5c:
                r8.unlock()
                return r5
            L60:
                com.google.common.collect.r0$i r4 = r4.a()     // Catch: java.lang.Throwable -> L69
                goto L16
            L65:
                r8.unlock()
                return r5
            L69:
                r9 = move-exception
                r8.unlock()
                goto L6f
            L6e:
                throw r9
            L6f:
                goto L6e
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.r0.n.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        V replace(K k2, int i2, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i2;
                i iVar = (i) atomicReferenceArray.get(length);
                for (i iVar2 = iVar; iVar2 != null; iVar2 = iVar2.a()) {
                    Object key = iVar2.getKey();
                    if (iVar2.b() == i2 && key != null && this.map.keyEquivalence.equivalent(k2, key)) {
                        V v2 = (V) iVar2.getValue();
                        if (v2 == null) {
                            if (isCollected(iVar2)) {
                                this.modCount++;
                                i removeFromChain = removeFromChain(iVar, iVar2);
                                int i3 = this.count - 1;
                                atomicReferenceArray.set(length, removeFromChain);
                                this.count = i3;
                            }
                            return null;
                        }
                        this.modCount++;
                        setValue(iVar2, v);
                        return v2;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }
    }
}
