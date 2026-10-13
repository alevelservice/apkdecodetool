package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CompactHashMap.java */
@GwtIncompatible
/* loaded from: classes.dex */
public class k<K, V> extends AbstractMap<K, V> implements Serializable {
    static final int DEFAULT_SIZE = 3;
    static final int UNSET = -1;

    /* renamed from: e, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient int[] f14109e;

    @VisibleForTesting
    @MonotonicNonNullDecl
    transient long[] entries;

    /* renamed from: f, reason: collision with root package name */
    private transient int f14110f;

    /* renamed from: g, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Set<K> f14111g;

    /* renamed from: h, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Set<Map.Entry<K, V>> f14112h;

    /* renamed from: i, reason: collision with root package name */
    @MonotonicNonNullDecl
    private transient Collection<V> f14113i;

    @VisibleForTesting
    @MonotonicNonNullDecl
    transient Object[] keys;
    transient int modCount;

    @VisibleForTesting
    @MonotonicNonNullDecl
    transient Object[] values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public class a extends k<K, V>.e<K> {
        a() {
            super(k.this, null);
        }

        @Override // com.google.common.collect.k.e
        K a(int i2) {
            return (K) k.this.keys[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public class b extends k<K, V>.e<Map.Entry<K, V>> {
        b() {
            super(k.this, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k.e
        public Map.Entry<K, V> a(int i2) {
            return new g(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public class c extends k<K, V>.e<V> {
        c() {
            super(k.this, null);
        }

        @Override // com.google.common.collect.k.e
        V a(int i2) {
            return (V) k.this.values[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public class d extends AbstractSet<Map.Entry<K, V>> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = k.this.a(entry.getKey());
            return a2 != -1 && e.i.c.a.h.a(k.this.values[a2], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return k.this.entrySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = k.this.a(entry.getKey());
            if (a2 == -1 || !e.i.c.a.h.a(k.this.values[a2], entry.getValue())) {
                return false;
            }
            k.this.c(a2);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k.this.f14110f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return k.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return k.this.keySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int a2 = k.this.a(obj);
            if (a2 == -1) {
                return false;
            }
            k.this.c(a2);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return k.this.f14110f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public final class g extends com.google.common.collect.c<K, V> {

        /* renamed from: e, reason: collision with root package name */
        @NullableDecl
        private final K f14123e;

        /* renamed from: f, reason: collision with root package name */
        private int f14124f;

        g(int i2) {
            this.f14123e = (K) k.this.keys[i2];
            this.f14124f = i2;
        }

        private void a() {
            int i2 = this.f14124f;
            if (i2 == -1 || i2 >= k.this.size() || !e.i.c.a.h.a(this.f14123e, k.this.keys[this.f14124f])) {
                this.f14124f = k.this.a(this.f14123e);
            }
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public K getKey() {
            return this.f14123e;
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public V getValue() {
            a();
            int i2 = this.f14124f;
            if (i2 == -1) {
                return null;
            }
            return (V) k.this.values[i2];
        }

        @Override // com.google.common.collect.c, java.util.Map.Entry
        public V setValue(V v) {
            a();
            int i2 = this.f14124f;
            if (i2 == -1) {
                k.this.put(this.f14123e, v);
                return null;
            }
            Object[] objArr = k.this.values;
            V v2 = (V) objArr[i2];
            objArr[i2] = v;
            return v2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    public class h extends AbstractCollection<V> {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            k.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return k.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return k.this.f14110f;
        }
    }

    k() {
        init(3);
    }

    private static int a(long j2) {
        return (int) (j2 >>> 32);
    }

    private static long a(long j2, int i2) {
        return (j2 & (-4294967296L)) | (i2 & 4294967295L);
    }

    private static long[] a(int i2) {
        long[] jArr = new long[i2];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int b(long j2) {
        return (int) j2;
    }

    private static int[] b(int i2) {
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @CanIgnoreReturnValue
    public V c(int i2) {
        return a(this.keys[i2], a(this.entries[i2]));
    }

    public static <K, V> k<K, V> create() {
        return new k<>();
    }

    public static <K, V> k<K, V> createWithExpectedSize(int i2) {
        return new k<>(i2);
    }

    private void d(int i2) {
        int length = this.entries.length;
        if (i2 > length) {
            int max = Math.max(1, length >>> 1) + length;
            if (max < 0) {
                max = Integer.MAX_VALUE;
            }
            if (max != length) {
                resizeEntries(max);
            }
        }
    }

    private void e(int i2) {
        int[] b2 = b(i2);
        long[] jArr = this.entries;
        int length = b2.length - 1;
        for (int i3 = 0; i3 < this.f14110f; i3++) {
            int a2 = a(jArr[i3]);
            int i4 = a2 & length;
            int i5 = b2[i4];
            b2[i4] = i3;
            jArr[i3] = (a2 << 32) | (4294967295L & i5);
        }
        this.f14109e = b2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt >= 0) {
            init(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                put(objectInputStream.readObject(), objectInputStream.readObject());
            }
            return;
        }
        throw new InvalidObjectException("Invalid size: " + readInt);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(this.f14110f);
        int firstEntryIndex = firstEntryIndex();
        while (firstEntryIndex >= 0) {
            objectOutputStream.writeObject(this.keys[firstEntryIndex]);
            objectOutputStream.writeObject(this.values[firstEntryIndex]);
            firstEntryIndex = getSuccessor(firstEntryIndex);
        }
    }

    void accessEntry(int i2) {
    }

    int adjustAfterRemove(int i2, int i3) {
        return i2 - 1;
    }

    void allocArrays() {
        e.i.c.a.j.b(needsAllocArrays(), "Arrays already allocated");
        int i2 = this.modCount;
        this.f14109e = b(u.a(i2, 1.0d));
        this.entries = a(i2);
        this.keys = new Object[i2];
        this.values = new Object[i2];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.modCount++;
        Arrays.fill(this.keys, 0, this.f14110f, (Object) null);
        Arrays.fill(this.values, 0, this.f14110f, (Object) null);
        Arrays.fill(this.f14109e, -1);
        Arrays.fill(this.entries, 0, this.f14110f, -1L);
        this.f14110f = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return a(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        for (int i2 = 0; i2 < this.f14110f; i2++) {
            if (e.i.c.a.h.a(obj, this.values[i2])) {
                return true;
            }
        }
        return false;
    }

    Set<Map.Entry<K, V>> createEntrySet() {
        return new d();
    }

    Set<K> createKeySet() {
        return new f();
    }

    Collection<V> createValues() {
        return new h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f14112h;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> createEntrySet = createEntrySet();
        this.f14112h = createEntrySet;
        return createEntrySet;
    }

    Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new b();
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        int a2 = a(obj);
        accessEntry(a2);
        if (a2 == -1) {
            return null;
        }
        return (V) this.values[a2];
    }

    int getSuccessor(int i2) {
        int i3 = i2 + 1;
        if (i3 < this.f14110f) {
            return i3;
        }
        return -1;
    }

    void init(int i2) {
        e.i.c.a.j.a(i2 >= 0, "Expected size must be non-negative");
        this.modCount = Math.max(1, i2);
    }

    void insertEntry(int i2, @NullableDecl K k2, @NullableDecl V v, int i3) {
        this.entries[i2] = (i3 << 32) | 4294967295L;
        this.keys[i2] = k2;
        this.values[i2] = v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.f14110f == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f14111g;
        if (set != null) {
            return set;
        }
        Set<K> createKeySet = createKeySet();
        this.f14111g = createKeySet;
        return createKeySet;
    }

    Iterator<K> keySetIterator() {
        return new a();
    }

    void moveLastEntry(int i2) {
        int size = size() - 1;
        if (i2 < size) {
            Object[] objArr = this.keys;
            objArr[i2] = objArr[size];
            Object[] objArr2 = this.values;
            objArr2[i2] = objArr2[size];
            objArr[size] = null;
            objArr2[size] = null;
            long[] jArr = this.entries;
            long j2 = jArr[size];
            jArr[i2] = j2;
            jArr[size] = -1;
            int a2 = a(j2) & a();
            int[] iArr = this.f14109e;
            int i3 = iArr[a2];
            if (i3 == size) {
                iArr[a2] = i2;
                return;
            }
            while (true) {
                long j3 = this.entries[i3];
                int b2 = b(j3);
                if (b2 == size) {
                    this.entries[i3] = a(j3, i2);
                    return;
                }
                i3 = b2;
            }
        } else {
            this.keys[i2] = null;
            this.values[i2] = null;
            this.entries[i2] = -1;
        }
    }

    boolean needsAllocArrays() {
        return this.f14109e == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V put(@NullableDecl K k2, @NullableDecl V v) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        long[] jArr = this.entries;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        int a2 = u.a(k2);
        int a3 = a() & a2;
        int i2 = this.f14110f;
        int[] iArr = this.f14109e;
        int i3 = iArr[a3];
        if (i3 == -1) {
            iArr[a3] = i2;
        } else {
            while (true) {
                long j2 = jArr[i3];
                if (a(j2) == a2 && e.i.c.a.h.a(k2, objArr[i3])) {
                    V v2 = (V) objArr2[i3];
                    objArr2[i3] = v;
                    accessEntry(i3);
                    return v2;
                }
                int b2 = b(j2);
                if (b2 == -1) {
                    jArr[i3] = a(j2, i2);
                    break;
                }
                i3 = b2;
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            int i4 = i2 + 1;
            d(i4);
            insertEntry(i2, k2, v, a2);
            this.f14110f = i4;
            int length = this.f14109e.length;
            if (u.a(i2, length, 1.0d)) {
                e(length * 2);
            }
            this.modCount++;
            return null;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        if (needsAllocArrays()) {
            return null;
        }
        return a(obj, u.a(obj));
    }

    void resizeEntries(int i2) {
        this.keys = Arrays.copyOf(this.keys, i2);
        this.values = Arrays.copyOf(this.values, i2);
        long[] jArr = this.entries;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i2);
        if (i2 > length) {
            Arrays.fill(copyOf, length, i2, -1L);
        }
        this.entries = copyOf;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f14110f;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        int i2 = this.f14110f;
        if (i2 < this.entries.length) {
            resizeEntries(i2);
        }
        int a2 = u.a(i2, 1.0d);
        if (a2 < this.f14109e.length) {
            e(a2);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f14113i;
        if (collection != null) {
            return collection;
        }
        Collection<V> createValues = createValues();
        this.f14113i = createValues;
        return createValues;
    }

    Iterator<V> valuesIterator() {
        return new c();
    }

    k(int i2) {
        init(i2);
    }

    private int a() {
        return this.f14109e.length - 1;
    }

    /* compiled from: CompactHashMap.java */
    /* loaded from: classes.dex */
    private abstract class e<T> implements Iterator<T> {

        /* renamed from: e, reason: collision with root package name */
        int f14118e;

        /* renamed from: f, reason: collision with root package name */
        int f14119f;

        /* renamed from: g, reason: collision with root package name */
        int f14120g;

        private e() {
            k kVar = k.this;
            this.f14118e = kVar.modCount;
            this.f14119f = kVar.firstEntryIndex();
            this.f14120g = -1;
        }

        private void a() {
            if (k.this.modCount != this.f14118e) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T a(int i2);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14119f >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (hasNext()) {
                int i2 = this.f14119f;
                this.f14120g = i2;
                T a2 = a(i2);
                this.f14119f = k.this.getSuccessor(this.f14119f);
                return a2;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            i.a(this.f14120g >= 0);
            this.f14118e++;
            k.this.c(this.f14120g);
            this.f14119f = k.this.adjustAfterRemove(this.f14119f, this.f14120g);
            this.f14120g = -1;
        }

        /* synthetic */ e(k kVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(@NullableDecl Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int a2 = u.a(obj);
        int i2 = this.f14109e[a() & a2];
        while (i2 != -1) {
            long j2 = this.entries[i2];
            if (a(j2) == a2 && e.i.c.a.h.a(obj, this.keys[i2])) {
                return i2;
            }
            i2 = b(j2);
        }
        return -1;
    }

    @NullableDecl
    private V a(@NullableDecl Object obj, int i2) {
        int a2 = a() & i2;
        int i3 = this.f14109e[a2];
        if (i3 == -1) {
            return null;
        }
        int i4 = -1;
        while (true) {
            if (a(this.entries[i3]) == i2 && e.i.c.a.h.a(obj, this.keys[i3])) {
                V v = (V) this.values[i3];
                if (i4 == -1) {
                    this.f14109e[a2] = b(this.entries[i3]);
                } else {
                    long[] jArr = this.entries;
                    jArr[i4] = a(jArr[i4], b(jArr[i3]));
                }
                moveLastEntry(i3);
                this.f14110f--;
                this.modCount++;
                return v;
            }
            int b2 = b(this.entries[i3]);
            if (b2 == -1) {
                return null;
            }
            i4 = i3;
            i3 = b2;
        }
    }
}
