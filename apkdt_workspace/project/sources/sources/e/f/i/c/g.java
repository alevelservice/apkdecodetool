package e.f.i.c;

import java.util.LinkedHashMap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: CountingLruMap.java */
@ThreadSafe
/* loaded from: classes.dex */
public class g<K, V> {

    /* renamed from: a, reason: collision with root package name */
    private final v<V> f17546a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private final LinkedHashMap<K, V> f17547b = new LinkedHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private int f17548c = 0;

    public g(v<V> vVar) {
        this.f17546a = vVar;
    }

    private int d(V v) {
        if (v == null) {
            return 0;
        }
        return this.f17546a.a(v);
    }

    public synchronized int a() {
        return this.f17547b.size();
    }

    @Nullable
    public synchronized K b() {
        return this.f17547b.isEmpty() ? null : this.f17547b.keySet().iterator().next();
    }

    public synchronized int c() {
        return this.f17548c;
    }

    public synchronized boolean a(K k2) {
        return this.f17547b.containsKey(k2);
    }

    @Nullable
    public synchronized V b(K k2) {
        return this.f17547b.get(k2);
    }

    @Nullable
    public synchronized V c(K k2) {
        V remove;
        remove = this.f17547b.remove(k2);
        this.f17548c -= d(remove);
        return remove;
    }

    @Nullable
    public synchronized V a(K k2, V v) {
        V remove;
        remove = this.f17547b.remove(k2);
        this.f17548c -= d(remove);
        this.f17547b.put(k2, v);
        this.f17548c += d(v);
        return remove;
    }
}
