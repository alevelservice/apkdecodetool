package com.google.android.gms.internal.clearcut;

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
public class c3<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final int f11376e;

    /* renamed from: f, reason: collision with root package name */
    private List<j3> f11377f;

    /* renamed from: g, reason: collision with root package name */
    private Map<K, V> f11378g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f11379h;

    /* renamed from: i, reason: collision with root package name */
    private volatile l3 f11380i;

    /* renamed from: j, reason: collision with root package name */
    private Map<K, V> f11381j;

    /* renamed from: k, reason: collision with root package name */
    private volatile f3 f11382k;

    private c3(int i2) {
        this.f11376e = i2;
        this.f11377f = Collections.emptyList();
        this.f11378g = Collections.emptyMap();
        this.f11381j = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ c3(int i2, d3 d3Var) {
        this(i2);
    }

    private final int a(K k2) {
        int size = this.f11377f.size() - 1;
        if (size >= 0) {
            int compareTo = k2.compareTo((Comparable) this.f11377f.get(size).getKey());
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
            int compareTo2 = k2.compareTo((Comparable) this.f11377f.get(i3).getKey());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends x0<FieldDescriptorType>> c3<FieldDescriptorType, Object> b(int i2) {
        return new d3(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V c(int i2) {
        f();
        V v = (V) this.f11377f.remove(i2).getValue();
        if (!this.f11378g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = g().entrySet().iterator();
            this.f11377f.add(new j3(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f11379h) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> g() {
        f();
        if (this.f11378g.isEmpty() && !(this.f11378g instanceof TreeMap)) {
            this.f11378g = new TreeMap();
            this.f11381j = ((TreeMap) this.f11378g).descendingMap();
        }
        return (SortedMap) this.f11378g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V a(K k2, V v) {
        f();
        int a2 = a((c3<K, V>) k2);
        if (a2 >= 0) {
            return (V) this.f11377f.get(a2).setValue(v);
        }
        f();
        if (this.f11377f.isEmpty() && !(this.f11377f instanceof ArrayList)) {
            this.f11377f = new ArrayList(this.f11376e);
        }
        int i2 = -(a2 + 1);
        if (i2 >= this.f11376e) {
            return g().put(k2, v);
        }
        int size = this.f11377f.size();
        int i3 = this.f11376e;
        if (size == i3) {
            j3 remove = this.f11377f.remove(i3 - 1);
            g().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.f11377f.add(i2, new j3(this, k2, v));
        return null;
    }

    public final Map.Entry<K, V> a(int i2) {
        return this.f11377f.get(i2);
    }

    public final boolean a() {
        return this.f11379h;
    }

    public final int b() {
        return this.f11377f.size();
    }

    public final Iterable<Map.Entry<K, V>> c() {
        return this.f11378g.isEmpty() ? g3.a() : this.f11378g.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f11377f.isEmpty()) {
            this.f11377f.clear();
        }
        if (this.f11378g.isEmpty()) {
            return;
        }
        this.f11378g.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((c3<K, V>) comparable) >= 0 || this.f11378g.containsKey(comparable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> d() {
        if (this.f11382k == null) {
            this.f11382k = new f3(this, null);
        }
        return this.f11382k;
    }

    public void e() {
        if (this.f11379h) {
            return;
        }
        this.f11378g = this.f11378g.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f11378g);
        this.f11381j = this.f11381j.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f11381j);
        this.f11379h = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f11380i == null) {
            this.f11380i = new l3(this, null);
        }
        return this.f11380i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c3)) {
            return super.equals(obj);
        }
        c3 c3Var = (c3) obj;
        int size = size();
        if (size != c3Var.size()) {
            return false;
        }
        int b2 = b();
        if (b2 != c3Var.b()) {
            return entrySet().equals(c3Var.entrySet());
        }
        for (int i2 = 0; i2 < b2; i2++) {
            if (!a(i2).equals(c3Var.a(i2))) {
                return false;
            }
        }
        if (b2 != size) {
            return this.f11378g.equals(c3Var.f11378g);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((c3<K, V>) comparable);
        return a2 >= 0 ? (V) this.f11377f.get(a2).getValue() : this.f11378g.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int b2 = b();
        int i2 = 0;
        for (int i3 = 0; i3 < b2; i3++) {
            i2 += this.f11377f.get(i3).hashCode();
        }
        return this.f11378g.size() > 0 ? i2 + this.f11378g.hashCode() : i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((c3<K, V>) obj, (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int a2 = a((c3<K, V>) comparable);
        if (a2 >= 0) {
            return (V) c(a2);
        }
        if (this.f11378g.isEmpty()) {
            return null;
        }
        return this.f11378g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f11377f.size() + this.f11378g.size();
    }
}
