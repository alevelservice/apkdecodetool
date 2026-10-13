package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: LinkedTreeMap.java */
/* loaded from: classes.dex */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* renamed from: e, reason: collision with root package name */
    private static final Comparator<Comparable> f15443e = new a();
    Comparator<? super K> comparator;
    private g<K, V>.b entrySet;
    final e<K, V> header;
    private g<K, V>.c keySet;
    int modCount;
    e<K, V> root;
    int size;

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    class a implements Comparator<Comparable> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    class b extends AbstractSet<Map.Entry<K, V>> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        class a extends g<K, V>.d<Map.Entry<K, V>> {
            a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.findByEntry((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> findByEntry;
            if (!(obj instanceof Map.Entry) || (findByEntry = g.this.findByEntry((Map.Entry) obj)) == null) {
                return false;
            }
            g.this.removeInternal(findByEntry, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.size;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    final class c extends AbstractSet<K> {

        /* compiled from: LinkedTreeMap.java */
        /* loaded from: classes.dex */
        class a extends g<K, V>.d<K> {
            a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f15455j;
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return g.this.removeInternalByKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return g.this.size;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public abstract class d<T> implements Iterator<T> {

        /* renamed from: e, reason: collision with root package name */
        e<K, V> f15446e;

        /* renamed from: f, reason: collision with root package name */
        e<K, V> f15447f;

        /* renamed from: g, reason: collision with root package name */
        int f15448g;

        d() {
            g gVar = g.this;
            this.f15446e = gVar.header.f15453h;
            this.f15447f = null;
            this.f15448g = gVar.modCount;
        }

        final e<K, V> a() {
            e<K, V> eVar = this.f15446e;
            g gVar = g.this;
            if (eVar != gVar.header) {
                if (gVar.modCount == this.f15448g) {
                    this.f15446e = eVar.f15453h;
                    this.f15447f = eVar;
                    return eVar;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f15446e != g.this.header;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f15447f;
            if (eVar != null) {
                g.this.removeInternal(eVar, true);
                this.f15447f = null;
                this.f15448g = g.this.modCount;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public g() {
        this(f15443e);
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void b(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f15451f;
        e<K, V> eVar3 = eVar.f15452g;
        e<K, V> eVar4 = eVar2.f15451f;
        e<K, V> eVar5 = eVar2.f15452g;
        eVar.f15451f = eVar5;
        if (eVar5 != null) {
            eVar5.f15450e = eVar;
        }
        a((e) eVar, (e) eVar2);
        eVar2.f15452g = eVar;
        eVar.f15450e = eVar2;
        eVar.f15457l = Math.max(eVar3 != null ? eVar3.f15457l : 0, eVar5 != null ? eVar5.f15457l : 0) + 1;
        eVar2.f15457l = Math.max(eVar.f15457l, eVar4 != null ? eVar4.f15457l : 0) + 1;
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        e<K, V> eVar = this.header;
        eVar.f15454i = eVar;
        eVar.f15453h = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.b bVar = this.entrySet;
        if (bVar != null) {
            return bVar;
        }
        g<K, V>.b bVar2 = new b();
        this.entrySet = bVar2;
        return bVar2;
    }

    e<K, V> find(K k2, boolean z) {
        int i2;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.comparator;
        e<K, V> eVar2 = this.root;
        if (eVar2 != null) {
            Comparable comparable = comparator == f15443e ? (Comparable) k2 : null;
            while (true) {
                if (comparable != null) {
                    i2 = comparable.compareTo(eVar2.f15455j);
                } else {
                    i2 = comparator.compare(k2, eVar2.f15455j);
                }
                if (i2 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = i2 < 0 ? eVar2.f15451f : eVar2.f15452g;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i2 = 0;
        }
        if (!z) {
            return null;
        }
        e<K, V> eVar4 = this.header;
        if (eVar2 == null) {
            if (comparator == f15443e && !(k2 instanceof Comparable)) {
                throw new ClassCastException(k2.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k2, eVar4, eVar4.f15454i);
            this.root = eVar;
        } else {
            eVar = new e<>(eVar2, k2, eVar4, eVar4.f15454i);
            if (i2 < 0) {
                eVar2.f15451f = eVar;
            } else {
                eVar2.f15452g = eVar;
            }
            a((e) eVar2, true);
        }
        this.size++;
        this.modCount++;
        return eVar;
    }

    e<K, V> findByEntry(Map.Entry<?, ?> entry) {
        e<K, V> findByObject = findByObject(entry.getKey());
        if (findByObject != null && a(findByObject.f15456k, entry.getValue())) {
            return findByObject;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    e<K, V> findByObject(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            return findByObject.f15456k;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        g<K, V>.c cVar = this.keySet;
        if (cVar != null) {
            return cVar;
        }
        g<K, V>.c cVar2 = new c();
        this.keySet = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v) {
        if (k2 != null) {
            e<K, V> find = find(k2, true);
            V v2 = find.f15456k;
            find.f15456k = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> removeInternalByKey = removeInternalByKey(obj);
        if (removeInternalByKey != null) {
            return removeInternalByKey.f15456k;
        }
        return null;
    }

    void removeInternal(e<K, V> eVar, boolean z) {
        int i2;
        if (z) {
            e<K, V> eVar2 = eVar.f15454i;
            eVar2.f15453h = eVar.f15453h;
            eVar.f15453h.f15454i = eVar2;
        }
        e<K, V> eVar3 = eVar.f15451f;
        e<K, V> eVar4 = eVar.f15452g;
        e<K, V> eVar5 = eVar.f15450e;
        int i3 = 0;
        if (eVar3 != null && eVar4 != null) {
            e<K, V> b2 = eVar3.f15457l > eVar4.f15457l ? eVar3.b() : eVar4.a();
            removeInternal(b2, false);
            e<K, V> eVar6 = eVar.f15451f;
            if (eVar6 != null) {
                i2 = eVar6.f15457l;
                b2.f15451f = eVar6;
                eVar6.f15450e = b2;
                eVar.f15451f = null;
            } else {
                i2 = 0;
            }
            e<K, V> eVar7 = eVar.f15452g;
            if (eVar7 != null) {
                i3 = eVar7.f15457l;
                b2.f15452g = eVar7;
                eVar7.f15450e = b2;
                eVar.f15452g = null;
            }
            b2.f15457l = Math.max(i2, i3) + 1;
            a((e) eVar, (e) b2);
            return;
        }
        if (eVar3 != null) {
            a((e) eVar, (e) eVar3);
            eVar.f15451f = null;
        } else if (eVar4 != null) {
            a((e) eVar, (e) eVar4);
            eVar.f15452g = null;
        } else {
            a((e) eVar, (e) null);
        }
        a((e) eVar5, false);
        this.size--;
        this.modCount++;
    }

    e<K, V> removeInternalByKey(Object obj) {
        e<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            removeInternal(findByObject, true);
        }
        return findByObject;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public g(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.header = new e<>();
        this.comparator = comparator == null ? f15443e : comparator;
    }

    private void a(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f15450e;
        eVar.f15450e = null;
        if (eVar2 != null) {
            eVar2.f15450e = eVar3;
        }
        if (eVar3 != null) {
            if (eVar3.f15451f == eVar) {
                eVar3.f15451f = eVar2;
                return;
            } else {
                eVar3.f15452g = eVar2;
                return;
            }
        }
        this.root = eVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes.dex */
    public static final class e<K, V> implements Map.Entry<K, V> {

        /* renamed from: e, reason: collision with root package name */
        e<K, V> f15450e;

        /* renamed from: f, reason: collision with root package name */
        e<K, V> f15451f;

        /* renamed from: g, reason: collision with root package name */
        e<K, V> f15452g;

        /* renamed from: h, reason: collision with root package name */
        e<K, V> f15453h;

        /* renamed from: i, reason: collision with root package name */
        e<K, V> f15454i;

        /* renamed from: j, reason: collision with root package name */
        final K f15455j;

        /* renamed from: k, reason: collision with root package name */
        V f15456k;

        /* renamed from: l, reason: collision with root package name */
        int f15457l;

        e() {
            this.f15455j = null;
            this.f15454i = this;
            this.f15453h = this;
        }

        public e<K, V> a() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f15451f; eVar2 != null; eVar2 = eVar2.f15451f) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e<K, V> b() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f15452g; eVar2 != null; eVar2 = eVar2.f15452g) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k2 = this.f15455j;
            if (k2 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k2.equals(entry.getKey())) {
                return false;
            }
            V v = this.f15456k;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f15455j;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f15456k;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k2 = this.f15455j;
            int hashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.f15456k;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f15456k;
            this.f15456k = v;
            return v2;
        }

        public String toString() {
            return this.f15455j + "=" + this.f15456k;
        }

        e(e<K, V> eVar, K k2, e<K, V> eVar2, e<K, V> eVar3) {
            this.f15450e = eVar;
            this.f15455j = k2;
            this.f15457l = 1;
            this.f15453h = eVar2;
            this.f15454i = eVar3;
            eVar3.f15453h = this;
            eVar2.f15454i = this;
        }
    }

    private void a(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f15451f;
            e<K, V> eVar3 = eVar.f15452g;
            int i2 = eVar2 != null ? eVar2.f15457l : 0;
            int i3 = eVar3 != null ? eVar3.f15457l : 0;
            int i4 = i2 - i3;
            if (i4 == -2) {
                e<K, V> eVar4 = eVar3.f15451f;
                e<K, V> eVar5 = eVar3.f15452g;
                int i5 = (eVar4 != null ? eVar4.f15457l : 0) - (eVar5 != null ? eVar5.f15457l : 0);
                if (i5 != -1 && (i5 != 0 || z)) {
                    b(eVar3);
                    a(eVar);
                } else {
                    a(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 2) {
                e<K, V> eVar6 = eVar2.f15451f;
                e<K, V> eVar7 = eVar2.f15452g;
                int i6 = (eVar6 != null ? eVar6.f15457l : 0) - (eVar7 != null ? eVar7.f15457l : 0);
                if (i6 != 1 && (i6 != 0 || z)) {
                    a(eVar2);
                    b(eVar);
                } else {
                    b(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i4 == 0) {
                eVar.f15457l = i2 + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.f15457l = Math.max(i2, i3) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.f15450e;
        }
    }

    private void a(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f15451f;
        e<K, V> eVar3 = eVar.f15452g;
        e<K, V> eVar4 = eVar3.f15451f;
        e<K, V> eVar5 = eVar3.f15452g;
        eVar.f15452g = eVar4;
        if (eVar4 != null) {
            eVar4.f15450e = eVar;
        }
        a((e) eVar, (e) eVar3);
        eVar3.f15451f = eVar;
        eVar.f15450e = eVar3;
        eVar.f15457l = Math.max(eVar2 != null ? eVar2.f15457l : 0, eVar4 != null ? eVar4.f15457l : 0) + 1;
        eVar3.f15457l = Math.max(eVar.f15457l, eVar5 != null ? eVar5.f15457l : 0) + 1;
    }
}
