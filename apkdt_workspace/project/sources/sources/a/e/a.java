package a.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: ArrayMap.java */
/* loaded from: classes.dex */
public class a<K, V> extends g<K, V> implements Map<K, V> {

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    f<K, V> f78l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayMap.java */
    /* renamed from: a.e.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0003a extends f<K, V> {
        C0003a() {
        }

        @Override // a.e.f
        protected Object a(int i2, int i3) {
            return a.this.f125f[(i2 << 1) + i3];
        }

        @Override // a.e.f
        protected int b(Object obj) {
            return a.this.b(obj);
        }

        @Override // a.e.f
        protected int c() {
            return a.this.f126g;
        }

        @Override // a.e.f
        protected int a(Object obj) {
            return a.this.a(obj);
        }

        @Override // a.e.f
        protected Map<K, V> b() {
            return a.this;
        }

        @Override // a.e.f
        protected void a(K k2, V v) {
            a.this.put(k2, v);
        }

        @Override // a.e.f
        protected V a(int i2, V v) {
            return a.this.a(i2, (int) v);
        }

        @Override // a.e.f
        protected void a(int i2) {
            a.this.c(i2);
        }

        @Override // a.e.f
        protected void a() {
            a.this.clear();
        }
    }

    public a() {
    }

    private f<K, V> b() {
        if (this.f78l == null) {
            this.f78l = new C0003a();
        }
        return this.f78l;
    }

    public boolean a(@NonNull Collection<?> collection) {
        return f.c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return b().e();
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        a(this.f126g + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }

    public a(int i2) {
        super(i2);
    }

    public a(g gVar) {
        super(gVar);
    }
}
