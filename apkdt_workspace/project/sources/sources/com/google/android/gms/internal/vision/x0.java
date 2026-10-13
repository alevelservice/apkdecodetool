package com.google.android.gms.internal.vision;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class x0<K, V> implements Serializable, Map<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private transient a1<Map.Entry<K, V>> f12580e;

    /* renamed from: f, reason: collision with root package name */
    private transient a1<K> f12581f;

    /* renamed from: g, reason: collision with root package name */
    private transient t0<V> f12582g;

    public static <K, V> x0<K, V> zza(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4) {
        r0.a(k2, v);
        r0.a(k3, v2);
        r0.a(k4, v3);
        r0.a(k5, v4);
        return c1.zza(4, new Object[]{k2, v, k3, v2, k4, v3, k5, v4});
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return ((t0) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        a1<Map.Entry<K, V>> a1Var = this.f12580e;
        if (a1Var != null) {
            return a1Var;
        }
        a1<Map.Entry<K, V>> zzce = zzce();
        this.f12580e = zzce;
        return zzce;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return f1.a((a1) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        a1<K> a1Var = this.f12581f;
        if (a1Var != null) {
            return a1Var;
        }
        a1<K> zzcf = zzcf();
        this.f12581f = zzcf;
        return zzcf;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k2, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        if (size >= 0) {
            StringBuilder sb = new StringBuilder((int) Math.min(size << 3, 1073741824L));
            sb.append('{');
            boolean z = true;
            for (Map.Entry<K, V> entry : entrySet()) {
                if (!z) {
                    sb.append(", ");
                }
                z = false;
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
            }
            sb.append('}');
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder("size".length() + 40);
        sb2.append("size");
        sb2.append(" cannot be negative but was: ");
        sb2.append(size);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        t0<V> t0Var = this.f12582g;
        if (t0Var != null) {
            return t0Var;
        }
        t0<V> zzcg = zzcg();
        this.f12582g = zzcg;
        return zzcg;
    }

    abstract a1<Map.Entry<K, V>> zzce();

    abstract a1<K> zzcf();

    abstract t0<V> zzcg();
}
