package com.google.android.gms.internal.ads;

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
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class ib1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final int f7258e;

    /* renamed from: f, reason: collision with root package name */
    private List<nb1> f7259f;

    /* renamed from: g, reason: collision with root package name */
    private Map<K, V> f7260g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f7261h;

    /* renamed from: i, reason: collision with root package name */
    private volatile pb1 f7262i;

    /* renamed from: j, reason: collision with root package name */
    private Map<K, V> f7263j;

    /* renamed from: k, reason: collision with root package name */
    private volatile jb1 f7264k;

    private ib1(int i2) {
        this.f7258e = i2;
        this.f7259f = Collections.emptyList();
        this.f7260g = Collections.emptyMap();
        this.f7263j = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends v81<FieldDescriptorType>> ib1<FieldDescriptorType, Object> b(int i2) {
        return new hb1(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f7261h) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> g() {
        f();
        if (this.f7260g.isEmpty() && !(this.f7260g instanceof TreeMap)) {
            this.f7260g = new TreeMap();
            this.f7263j = ((TreeMap) this.f7260g).descendingMap();
        }
        return (SortedMap) this.f7260g;
    }

    public final boolean a() {
        return this.f7261h;
    }

    public final int c() {
        return this.f7259f.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f7259f.isEmpty()) {
            this.f7259f.clear();
        }
        if (this.f7260g.isEmpty()) {
            return;
        }
        this.f7260g.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((ib1<K, V>) comparable) >= 0 || this.f7260g.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        if (this.f7260g.isEmpty()) {
            return mb1.a();
        }
        return this.f7260g.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> e() {
        if (this.f7264k == null) {
            this.f7264k = new jb1(this, null);
        }
        return this.f7264k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f7262i == null) {
            this.f7262i = new pb1(this, null);
        }
        return this.f7262i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ib1)) {
            return super.equals(obj);
        }
        ib1 ib1Var = (ib1) obj;
        int size = size();
        if (size != ib1Var.size()) {
            return false;
        }
        int c2 = c();
        if (c2 != ib1Var.c()) {
            return entrySet().equals(ib1Var.entrySet());
        }
        for (int i2 = 0; i2 < c2; i2++) {
            if (!a(i2).equals(ib1Var.a(i2))) {
                return false;
            }
        }
        if (c2 != size) {
            return this.f7260g.equals(ib1Var.f7260g);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((ib1<K, V>) comparable);
        if (a2 >= 0) {
            return (V) this.f7259f.get(a2).getValue();
        }
        return this.f7260g.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c2 = c();
        int i2 = 0;
        for (int i3 = 0; i3 < c2; i3++) {
            i2 += this.f7259f.get(i3).hashCode();
        }
        return this.f7260g.size() > 0 ? i2 + this.f7260g.hashCode() : i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((ib1<K, V>) obj, (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int a2 = a((ib1<K, V>) comparable);
        if (a2 >= 0) {
            return (V) c(a2);
        }
        if (this.f7260g.isEmpty()) {
            return null;
        }
        return this.f7260g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f7259f.size() + this.f7260g.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V c(int i2) {
        f();
        V v = (V) this.f7259f.remove(i2).getValue();
        if (!this.f7260g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = g().entrySet().iterator();
            this.f7259f.add(new nb1(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final Map.Entry<K, V> a(int i2) {
        return this.f7259f.get(i2);
    }

    public void b() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.f7261h) {
            return;
        }
        if (this.f7260g.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.f7260g);
        }
        this.f7260g = unmodifiableMap;
        if (this.f7263j.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.f7263j);
        }
        this.f7263j = unmodifiableMap2;
        this.f7261h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V a(K k2, V v) {
        f();
        int a2 = a((ib1<K, V>) k2);
        if (a2 >= 0) {
            return (V) this.f7259f.get(a2).setValue(v);
        }
        f();
        if (this.f7259f.isEmpty() && !(this.f7259f instanceof ArrayList)) {
            this.f7259f = new ArrayList(this.f7258e);
        }
        int i2 = -(a2 + 1);
        if (i2 >= this.f7258e) {
            return g().put(k2, v);
        }
        int size = this.f7259f.size();
        int i3 = this.f7258e;
        if (size == i3) {
            nb1 remove = this.f7259f.remove(i3 - 1);
            g().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.f7259f.add(i2, new nb1(this, k2, v));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ib1(int i2, hb1 hb1Var) {
        this(i2);
    }

    private final int a(K k2) {
        int size = this.f7259f.size() - 1;
        if (size >= 0) {
            int compareTo = k2.compareTo((Comparable) this.f7259f.get(size).getKey());
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
            int compareTo2 = k2.compareTo((Comparable) this.f7259f.get(i3).getKey());
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
