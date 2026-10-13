package a.b.a.b;

import a.b.a.b.b;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FastSafeIterableMap.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class a<K, V> extends b<K, V> {

    /* renamed from: i, reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f64i = new HashMap<>();

    @Override // a.b.a.b.b
    protected b.c<K, V> a(K k2) {
        return this.f64i.get(k2);
    }

    @Override // a.b.a.b.b
    public V b(@NonNull K k2, @NonNull V v) {
        b.c<K, V> a2 = a(k2);
        if (a2 != null) {
            return a2.f70f;
        }
        this.f64i.put(k2, a(k2, v));
        return null;
    }

    public boolean contains(K k2) {
        return this.f64i.containsKey(k2);
    }

    @Override // a.b.a.b.b
    public V remove(@NonNull K k2) {
        V v = (V) super.remove(k2);
        this.f64i.remove(k2);
        return v;
    }

    public Map.Entry<K, V> b(K k2) {
        if (contains(k2)) {
            return this.f64i.get(k2).f72h;
        }
        return null;
    }
}
