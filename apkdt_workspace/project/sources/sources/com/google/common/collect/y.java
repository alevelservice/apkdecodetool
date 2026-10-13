package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.d0;
import com.google.common.collect.l1;
import com.google.common.collect.x;
import com.google.common.collect.z;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ImmutableListMultimap.java */
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public class y<K, V> extends d0<K, V> implements o0<K, V> {

    @GwtIncompatible
    private static final long serialVersionUID = 0;

    /* renamed from: h, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    private transient y<V, K> f14201h;

    /* compiled from: ImmutableListMultimap.java */
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
        public y<K, V> a() {
            return (y) super.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(z<K, x<V>> zVar, int i2) {
        super(zVar, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private y<V, K> a() {
        a builder = builder();
        t1 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            builder.a((a) entry.getValue(), entry.getKey());
        }
        y<V, K> a2 = builder.a();
        a2.f14201h = this;
        return a2;
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> y<K, V> copyOf(t0<? extends K, ? extends V> t0Var) {
        if (t0Var.isEmpty()) {
            return of();
        }
        if (t0Var instanceof y) {
            y<K, V> yVar = (y) t0Var;
            if (!yVar.isPartialView()) {
                return yVar;
            }
        }
        return fromMapEntries(t0Var.asMap().entrySet(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> y<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @NullableDecl Comparator<? super V> comparator) {
        x sortedCopyOf;
        if (collection.isEmpty()) {
            return of();
        }
        z.b bVar = new z.b(collection.size());
        int i2 = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            if (comparator == null) {
                sortedCopyOf = x.copyOf((Collection) value);
            } else {
                sortedCopyOf = x.sortedCopyOf(comparator, value);
            }
            if (!sortedCopyOf.isEmpty()) {
                bVar.a(key, sortedCopyOf);
                i2 += sortedCopyOf.size();
            }
        }
        return new y<>(bVar.a(), i2);
    }

    public static <K, V> y<K, V> of() {
        return o.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            z.b builder = z.builder();
            int i2 = 0;
            for (int i3 = 0; i3 < readInt; i3++) {
                Object readObject = objectInputStream.readObject();
                int readInt2 = objectInputStream.readInt();
                if (readInt2 > 0) {
                    x.a builder2 = x.builder();
                    for (int i4 = 0; i4 < readInt2; i4++) {
                        builder2.a((x.a) objectInputStream.readObject());
                    }
                    builder.a(readObject, builder2.a());
                    i2 += readInt2;
                } else {
                    throw new InvalidObjectException("Invalid value count " + readInt2);
                }
            }
            try {
                d0.e.f14068a.a((l1.b<d0>) this, (Object) builder.a());
                d0.e.f14069b.a((l1.b<d0>) this, i2);
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
        l1.a(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0
    public /* bridge */ /* synthetic */ v get(@NullableDecl Object obj) {
        return get((y<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ v replaceValues(Object obj, Iterable iterable) {
        return replaceValues((y<K, V>) obj, iterable);
    }

    public static <K, V> y<K, V> of(K k2, V v) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        return builder.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0
    /* renamed from: get */
    public /* bridge */ /* synthetic */ Collection mo5get(@NullableDecl Object obj) {
        return get((y<K, V>) obj);
    }

    @Override // com.google.common.collect.d0
    public y<V, K> inverse() {
        y<V, K> yVar = this.f14201h;
        if (yVar != null) {
            return yVar;
        }
        y<V, K> a2 = a();
        this.f14201h = a2;
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((y<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0
    /* renamed from: get */
    public /* bridge */ /* synthetic */ List mo5get(@NullableDecl Object obj) {
        return get((y<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ List replaceValues(Object obj, Iterable iterable) {
        return replaceValues((y<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.d0
    public x<V> get(@NullableDecl K k2) {
        x<V> xVar = (x) this.map.get(k2);
        return xVar == null ? x.of() : xVar;
    }

    @Override // com.google.common.collect.d0
    @CanIgnoreReturnValue
    @Deprecated
    /* renamed from: removeAll */
    public x<V> mo6removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.d
    @CanIgnoreReturnValue
    @Deprecated
    public x<V> replaceValues(K k2, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    public static <K, V> y<K, V> of(K k2, V v, K k3, V v2) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        return builder.a();
    }

    @Beta
    public static <K, V> y<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        a aVar = new a();
        aVar.a((Iterable) iterable);
        return aVar.a();
    }

    public static <K, V> y<K, V> of(K k2, V v, K k3, V v2, K k4, V v3) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        builder.a((a) k4, (K) v3);
        return builder.a();
    }

    public static <K, V> y<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        builder.a((a) k4, (K) v3);
        builder.a((a) k5, (K) v4);
        return builder.a();
    }

    public static <K, V> y<K, V> of(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5) {
        a builder = builder();
        builder.a((a) k2, (K) v);
        builder.a((a) k3, (K) v2);
        builder.a((a) k4, (K) v3);
        builder.a((a) k5, (K) v4);
        builder.a((a) k6, (K) v5);
        return builder.a();
    }
}
