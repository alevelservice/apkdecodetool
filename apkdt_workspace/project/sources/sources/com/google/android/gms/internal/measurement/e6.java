package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e6<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final int f11831e;

    /* renamed from: f, reason: collision with root package name */
    private List<j6> f11832f;

    /* renamed from: g, reason: collision with root package name */
    private Map<K, V> f11833g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f11834h;

    /* renamed from: i, reason: collision with root package name */
    private volatile l6 f11835i;

    /* renamed from: j, reason: collision with root package name */
    private Map<K, V> f11836j;

    /* renamed from: k, reason: collision with root package name */
    private volatile f6 f11837k;

    private e6(int i2) {
        this.f11831e = i2;
        this.f11832f = Collections.emptyList();
        this.f11833g = Collections.emptyMap();
        this.f11836j = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends t3<FieldDescriptorType>> e6<FieldDescriptorType, Object> b(int i2) {
        return new d6(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f11834h) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> g() {
        f();
        if (this.f11833g.isEmpty() && !(this.f11833g instanceof TreeMap)) {
            this.f11833g = new TreeMap();
            this.f11836j = ((TreeMap) this.f11833g).descendingMap();
        }
        return (SortedMap) this.f11833g;
    }

    public final boolean a() {
        return this.f11834h;
    }

    public final int c() {
        return this.f11832f.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f11832f.isEmpty()) {
            this.f11832f.clear();
        }
        if (this.f11833g.isEmpty()) {
            return;
        }
        this.f11833g.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((e6<K, V>) comparable) >= 0 || this.f11833g.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        if (this.f11833g.isEmpty()) {
            return i6.a();
        }
        return this.f11833g.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> e() {
        if (this.f11837k == null) {
            this.f11837k = new f6(this, null);
        }
        return this.f11837k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f11835i == null) {
            this.f11835i = new l6(this, null);
        }
        return this.f11835i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e6)) {
            return super.equals(obj);
        }
        e6 e6Var = (e6) obj;
        int size = size();
        if (size != e6Var.size()) {
            return false;
        }
        int c2 = c();
        if (c2 != e6Var.c()) {
            return entrySet().equals(e6Var.entrySet());
        }
        for (int i2 = 0; i2 < c2; i2++) {
            if (!a(i2).equals(e6Var.a(i2))) {
                return false;
            }
        }
        if (c2 != size) {
            return this.f11833g.equals(e6Var.f11833g);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((e6<K, V>) comparable);
        if (a2 >= 0) {
            return (V) this.f11832f.get(a2).getValue();
        }
        return this.f11833g.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c2 = c();
        int i2 = 0;
        for (int i3 = 0; i3 < c2; i3++) {
            i2 += this.f11832f.get(i3).hashCode();
        }
        return this.f11833g.size() > 0 ? i2 + this.f11833g.hashCode() : i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((e6<K, V>) obj, (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int a2 = a((e6<K, V>) comparable);
        if (a2 >= 0) {
            return (V) c(a2);
        }
        if (this.f11833g.isEmpty()) {
            return null;
        }
        return this.f11833g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f11832f.size() + this.f11833g.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V c(int i2) {
        f();
        V v = (V) this.f11832f.remove(i2).getValue();
        if (!this.f11833g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = g().entrySet().iterator();
            this.f11832f.add(new j6(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final Map.Entry<K, V> a(int i2) {
        return this.f11832f.get(i2);
    }

    public void b() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.f11834h) {
            return;
        }
        if (this.f11833g.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.f11833g);
        }
        this.f11833g = unmodifiableMap;
        if (this.f11836j.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.f11836j);
        }
        this.f11836j = unmodifiableMap2;
        this.f11834h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V a(K k2, V v) {
        f();
        int a2 = a((e6<K, V>) k2);
        if (a2 >= 0) {
            return (V) this.f11832f.get(a2).setValue(v);
        }
        f();
        if (this.f11832f.isEmpty() && !(this.f11832f instanceof ArrayList)) {
            this.f11832f = new ArrayList(this.f11831e);
        }
        int i2 = -(a2 + 1);
        if (i2 >= this.f11831e) {
            return g().put(k2, v);
        }
        int size = this.f11832f.size();
        int i3 = this.f11831e;
        if (size == i3) {
            j6 remove = this.f11832f.remove(i3 - 1);
            g().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.f11832f.add(i2, new j6(this, k2, v));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e6(int i2, d6 d6Var) {
        this(i2);
    }

    private final int a(K k2) {
        int size = this.f11832f.size() - 1;
        if (size >= 0) {
            int compareTo = k2.compareTo((Comparable) this.f11832f.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) / 2;
            int compareTo2 = k2.compareTo((Comparable) this.f11832f.get(i3).getKey());
            if (compareTo2 < 0) {
                size = i3 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i3;
                }
                i2 = i3 + 1;
            }
        }
        return -(i2 + 1);
    }
}
