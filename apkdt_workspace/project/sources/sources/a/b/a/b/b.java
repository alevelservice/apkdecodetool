package a.b.a.b;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: SafeIterableMap.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: e, reason: collision with root package name */
    c<K, V> f65e;

    /* renamed from: f, reason: collision with root package name */
    private c<K, V> f66f;

    /* renamed from: g, reason: collision with root package name */
    private WeakHashMap<f<K, V>, Boolean> f67g = new WeakHashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private int f68h = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // a.b.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f72h;
        }

        @Override // a.b.a.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.f71g;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.b.a.b.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0002b<K, V> extends e<K, V> {
        C0002b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // a.b.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f71g;
        }

        @Override // a.b.a.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.f72h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public static class c<K, V> implements Map.Entry<K, V> {

        /* renamed from: e, reason: collision with root package name */
        @NonNull
        final K f69e;

        /* renamed from: f, reason: collision with root package name */
        @NonNull
        final V f70f;

        /* renamed from: g, reason: collision with root package name */
        c<K, V> f71g;

        /* renamed from: h, reason: collision with root package name */
        c<K, V> f72h;

        c(@NonNull K k2, @NonNull V v) {
            this.f69e = k2;
            this.f70f = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f69e.equals(cVar.f69e) && this.f70f.equals(cVar.f70f);
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f69e;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f70f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f69e.hashCode() ^ this.f70f.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f69e + "=" + this.f70f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* renamed from: e, reason: collision with root package name */
        private c<K, V> f73e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f74f = true;

        d() {
        }

        @Override // a.b.a.b.b.f
        public void a(@NonNull c<K, V> cVar) {
            c<K, V> cVar2 = this.f73e;
            if (cVar == cVar2) {
                this.f73e = cVar2.f72h;
                this.f74f = this.f73e == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f74f) {
                return b.this.f65e != null;
            }
            c<K, V> cVar = this.f73e;
            return (cVar == null || cVar.f71g == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (this.f74f) {
                this.f74f = false;
                this.f73e = b.this.f65e;
            } else {
                c<K, V> cVar = this.f73e;
                this.f73e = cVar != null ? cVar.f71g : null;
            }
            return this.f73e;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* renamed from: e, reason: collision with root package name */
        c<K, V> f76e;

        /* renamed from: f, reason: collision with root package name */
        c<K, V> f77f;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f76e = cVar2;
            this.f77f = cVar;
        }

        @Override // a.b.a.b.b.f
        public void a(@NonNull c<K, V> cVar) {
            if (this.f76e == cVar && cVar == this.f77f) {
                this.f77f = null;
                this.f76e = null;
            }
            c<K, V> cVar2 = this.f76e;
            if (cVar2 == cVar) {
                this.f76e = b(cVar2);
            }
            if (this.f77f == cVar) {
                this.f77f = a();
            }
        }

        abstract c<K, V> b(c<K, V> cVar);

        abstract c<K, V> c(c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f77f != null;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f77f;
            this.f77f = a();
            return cVar;
        }

        private c<K, V> a() {
            c<K, V> cVar = this.f77f;
            c<K, V> cVar2 = this.f76e;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* loaded from: classes.dex */
    public interface f<K, V> {
        void a(@NonNull c<K, V> cVar);
    }

    protected c<K, V> a(K k2) {
        c<K, V> cVar = this.f65e;
        while (cVar != null && !cVar.f69e.equals(k2)) {
            cVar = cVar.f71g;
        }
        return cVar;
    }

    public V b(@NonNull K k2, @NonNull V v) {
        c<K, V> a2 = a(k2);
        if (a2 != null) {
            return a2.f70f;
        }
        a(k2, v);
        return null;
    }

    public Map.Entry<K, V> c() {
        return this.f66f;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0002b c0002b = new C0002b(this.f66f, this.f65e);
        this.f67g.put(c0002b, false);
        return c0002b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 += it.next().hashCode();
        }
        return i2;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f65e, this.f66f);
        this.f67g.put(aVar, false);
        return aVar;
    }

    public V remove(@NonNull K k2) {
        c<K, V> a2 = a(k2);
        if (a2 == null) {
            return null;
        }
        this.f68h--;
        if (!this.f67g.isEmpty()) {
            Iterator<f<K, V>> it = this.f67g.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(a2);
            }
        }
        c<K, V> cVar = a2.f72h;
        if (cVar != null) {
            cVar.f71g = a2.f71g;
        } else {
            this.f65e = a2.f71g;
        }
        c<K, V> cVar2 = a2.f71g;
        if (cVar2 != null) {
            cVar2.f72h = a2.f72h;
        } else {
            this.f66f = a2.f72h;
        }
        a2.f71g = null;
        a2.f72h = null;
        return a2.f70f;
    }

    public int size() {
        return this.f68h;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c<K, V> a(@NonNull K k2, @NonNull V v) {
        c<K, V> cVar = new c<>(k2, v);
        this.f68h++;
        c<K, V> cVar2 = this.f66f;
        if (cVar2 == null) {
            this.f65e = cVar;
            this.f66f = this.f65e;
            return cVar;
        }
        cVar2.f71g = cVar;
        cVar.f72h = cVar2;
        this.f66f = cVar;
        return cVar;
    }

    public b<K, V>.d b() {
        b<K, V>.d dVar = new d();
        this.f67g.put(dVar, false);
        return dVar;
    }

    public Map.Entry<K, V> a() {
        return this.f65e;
    }
}
