package com.google.android.gms.internal.vision;

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
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class v6<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private final int f12555e;

    /* renamed from: f, reason: collision with root package name */
    private List<a7> f12556f;

    /* renamed from: g, reason: collision with root package name */
    private Map<K, V> f12557g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f12558h;

    /* renamed from: i, reason: collision with root package name */
    private volatile c7 f12559i;

    /* renamed from: j, reason: collision with root package name */
    private Map<K, V> f12560j;

    /* renamed from: k, reason: collision with root package name */
    private volatile w6 f12561k;

    private v6(int i2) {
        this.f12555e = i2;
        this.f12556f = Collections.emptyList();
        this.f12557g = Collections.emptyMap();
        this.f12560j = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <FieldDescriptorType extends k4<FieldDescriptorType>> v6<FieldDescriptorType, Object> b(int i2) {
        return new u6(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f12558h) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> g() {
        f();
        if (this.f12557g.isEmpty() && !(this.f12557g instanceof TreeMap)) {
            this.f12557g = new TreeMap();
            this.f12560j = ((TreeMap) this.f12557g).descendingMap();
        }
        return (SortedMap) this.f12557g;
    }

    public final boolean a() {
        return this.f12558h;
    }

    public final int c() {
        return this.f12556f.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        f();
        if (!this.f12556f.isEmpty()) {
            this.f12556f.clear();
        }
        if (this.f12557g.isEmpty()) {
            return;
        }
        this.f12557g.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a((v6<K, V>) comparable) >= 0 || this.f12557g.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        if (this.f12557g.isEmpty()) {
            return z6.a();
        }
        return this.f12557g.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> e() {
        if (this.f12561k == null) {
            this.f12561k = new w6(this, null);
        }
        return this.f12561k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f12559i == null) {
            this.f12559i = new c7(this, null);
        }
        return this.f12559i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v6)) {
            return super.equals(obj);
        }
        v6 v6Var = (v6) obj;
        int size = size();
        if (size != v6Var.size()) {
            return false;
        }
        int c2 = c();
        if (c2 != v6Var.c()) {
            return entrySet().equals(v6Var.entrySet());
        }
        for (int i2 = 0; i2 < c2; i2++) {
            if (!a(i2).equals(v6Var.a(i2))) {
                return false;
            }
        }
        if (c2 != size) {
            return this.f12557g.equals(v6Var.f12557g);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a((v6<K, V>) comparable);
        if (a2 >= 0) {
            return (V) this.f12556f.get(a2).getValue();
        }
        return this.f12557g.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c2 = c();
        int i2 = 0;
        for (int i3 = 0; i3 < c2; i3++) {
            i2 += this.f12556f.get(i3).hashCode();
        }
        return this.f12557g.size() > 0 ? i2 + this.f12557g.hashCode() : i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return a((v6<K, V>) obj, (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int a2 = a((v6<K, V>) comparable);
        if (a2 >= 0) {
            return (V) c(a2);
        }
        if (this.f12557g.isEmpty()) {
            return null;
        }
        return this.f12557g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f12556f.size() + this.f12557g.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V c(int i2) {
        f();
        V v = (V) this.f12556f.remove(i2).getValue();
        if (!this.f12557g.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = g().entrySet().iterator();
            this.f12556f.add(new a7(this, it.next()));
            it.remove();
        }
        return v;
    }

    public final Map.Entry<K, V> a(int i2) {
        return this.f12556f.get(i2);
    }

    public void b() {
        Map<K, V> unmodifiableMap;
        Map<K, V> unmodifiableMap2;
        if (this.f12558h) {
            return;
        }
        if (this.f12557g.isEmpty()) {
            unmodifiableMap = Collections.emptyMap();
        } else {
            unmodifiableMap = Collections.unmodifiableMap(this.f12557g);
        }
        this.f12557g = unmodifiableMap;
        if (this.f12560j.isEmpty()) {
            unmodifiableMap2 = Collections.emptyMap();
        } else {
            unmodifiableMap2 = Collections.unmodifiableMap(this.f12560j);
        }
        this.f12560j = unmodifiableMap2;
        this.f12558h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final V a(K k2, V v) {
        f();
        int a2 = a((v6<K, V>) k2);
        if (a2 >= 0) {
            return (V) this.f12556f.get(a2).setValue(v);
        }
        f();
        if (this.f12556f.isEmpty() && !(this.f12556f instanceof ArrayList)) {
            this.f12556f = new ArrayList(this.f12555e);
        }
        int i2 = -(a2 + 1);
        if (i2 >= this.f12555e) {
            return g().put(k2, v);
        }
        int size = this.f12556f.size();
        int i3 = this.f12555e;
        if (size == i3) {
            a7 remove = this.f12556f.remove(i3 - 1);
            g().put((Comparable) remove.getKey(), remove.getValue());
        }
        this.f12556f.add(i2, new a7(this, k2, v));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ v6(int i2, u6 u6Var) {
        this(i2);
    }

    private final int a(K k2) {
        int size = this.f12556f.size() - 1;
        if (size >= 0) {
            int compareTo = k2.compareTo((Comparable) this.f12556f.get(size).getKey());
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
            int compareTo2 = k2.compareTo((Comparable) this.f12556f.get(i3).getKey());
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
