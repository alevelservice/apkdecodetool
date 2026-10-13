package a.e;

import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MapCollections.java */
/* loaded from: classes.dex */
public abstract class f<K, V> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    f<K, V>.b f105a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    f<K, V>.c f106b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    f<K, V>.e f107c;

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class a<T> implements Iterator<T> {

        /* renamed from: e, reason: collision with root package name */
        final int f108e;

        /* renamed from: f, reason: collision with root package name */
        int f109f;

        /* renamed from: g, reason: collision with root package name */
        int f110g;

        /* renamed from: h, reason: collision with root package name */
        boolean f111h = false;

        a(int i2) {
            this.f108e = i2;
            this.f109f = f.this.c();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f110g < this.f109f;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) f.this.a(this.f110g, this.f108e);
                this.f110g++;
                this.f111h = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f111h) {
                this.f110g--;
                this.f109f--;
                this.f111h = false;
                f.this.a(this.f110g);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        public boolean a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            a((Map.Entry) obj);
            throw null;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int c2 = f.this.c();
            for (Map.Entry<K, V> entry : collection) {
                f.this.a((f) entry.getKey(), (K) entry.getValue());
            }
            return c2 != f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = f.this.a(entry.getKey());
            if (a2 < 0) {
                return false;
            }
            return a.e.c.a(f.this.a(a2, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i2 = 0;
            for (int c2 = f.this.c() - 1; c2 >= 0; c2--) {
                Object a2 = f.this.a(c2, 0);
                Object a3 = f.this.a(c2, 1);
                i2 += (a2 == null ? 0 : a2.hashCode()) ^ (a3 == null ? 0 : a3.hashCode());
            }
            return i2;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return f.this.c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k2) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            f.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return f.this.a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return f.a((Map) f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return f.a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i2 = 0;
            for (int c2 = f.this.c() - 1; c2 >= 0; c2--) {
                Object a2 = f.this.a(c2, 0);
                i2 += a2 == null ? 0 : a2.hashCode();
            }
            return i2;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return f.this.c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int a2 = f.this.a(obj);
            if (a2 < 0) {
                return false;
            }
            f.this.a(a2);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return f.b(f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return f.c(f.this.b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return f.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return f.this.b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 0);
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: e, reason: collision with root package name */
        int f115e;

        /* renamed from: g, reason: collision with root package name */
        boolean f117g = false;

        /* renamed from: f, reason: collision with root package name */
        int f116f = -1;

        d() {
            this.f115e = f.this.c() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f117g) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return a.e.c.a(entry.getKey(), f.this.a(this.f116f, 0)) && a.e.c.a(entry.getValue(), f.this.a(this.f116f, 1));
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f117g) {
                return (K) f.this.a(this.f116f, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f117g) {
                return (V) f.this.a(this.f116f, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f116f < this.f115e;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f117g) {
                Object a2 = f.this.a(this.f116f, 0);
                Object a3 = f.this.a(this.f116f, 1);
                return (a2 == null ? 0 : a2.hashCode()) ^ (a3 != null ? a3.hashCode() : 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            next();
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f117g) {
                f.this.a(this.f116f);
                this.f116f--;
                this.f115e--;
                this.f117g = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f117g) {
                return (V) f.this.a(this.f116f, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f116f++;
                this.f117g = true;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes.dex */
    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            f.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return f.this.b(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return f.this.c() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int b2 = f.this.b(obj);
            if (b2 < 0) {
                return false;
            }
            f.this.a(b2);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int c2 = f.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < c2) {
                if (collection.contains(f.this.a(i2, 1))) {
                    f.this.a(i2);
                    i2--;
                    c2--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int c2 = f.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < c2) {
                if (!collection.contains(f.this.a(i2, 1))) {
                    f.this.a(i2);
                    i2--;
                    c2--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return f.this.c();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return f.this.b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) f.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract int a(Object obj);

    protected abstract Object a(int i2, int i3);

    protected abstract V a(int i2, V v);

    protected abstract void a();

    protected abstract void a(int i2);

    protected abstract void a(K k2, V v);

    protected abstract int b(Object obj);

    protected abstract Map<K, V> b();

    protected abstract int c();

    public Set<Map.Entry<K, V>> d() {
        if (this.f105a == null) {
            this.f105a = new b();
        }
        return this.f105a;
    }

    public Set<K> e() {
        if (this.f106b == null) {
            this.f106b = new c();
        }
        return this.f106b;
    }

    public Collection<V> f() {
        if (this.f107c == null) {
            this.f107c = new e();
        }
        return this.f107c;
    }

    public <T> T[] a(T[] tArr, int i2) {
        int c2 = c();
        if (tArr.length < c2) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), c2));
        }
        for (int i3 = 0; i3 < c2; i3++) {
            tArr[i3] = a(i3, i2);
        }
        if (tArr.length > c2) {
            tArr[c2] = null;
        }
        return tArr;
    }

    public Object[] b(int i2) {
        int c2 = c();
        Object[] objArr = new Object[c2];
        for (int i3 = 0; i3 < c2; i3++) {
            objArr[i3] = a(i3, i2);
        }
        return objArr;
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
