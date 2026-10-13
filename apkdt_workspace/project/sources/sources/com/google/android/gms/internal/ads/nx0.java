package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class nx0<K, V> implements Serializable, Map<K, V> {

    /* renamed from: e, reason: collision with root package name */
    private transient mx0<Map.Entry<K, V>> f8451e;

    /* renamed from: f, reason: collision with root package name */
    private transient mx0<K> f8452f;

    /* renamed from: g, reason: collision with root package name */
    private transient ex0<V> f8453g;

    public static <K, V> nx0<K, V> zza(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5) {
        dx0.a(k2, v);
        dx0.a(k3, v2);
        dx0.a(k4, v3);
        dx0.a(k5, v4);
        dx0.a(k6, v5);
        return sx0.zzc(5, new Object[]{k2, v, k3, v2, k4, v3, k5, v4, k6, v5});
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
        return ((ex0) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        mx0<Map.Entry<K, V>> mx0Var = this.f8451e;
        if (mx0Var != null) {
            return mx0Var;
        }
        mx0<Map.Entry<K, V>> zzaon = zzaon();
        this.f8451e = zzaon;
        return zzaon;
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

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return yx0.a((mx0) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        mx0<K> mx0Var = this.f8452f;
        if (mx0Var != null) {
            return mx0Var;
        }
        mx0<K> zzaoo = zzaoo();
        this.f8452f = zzaoo;
        return zzaoo;
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
        dx0.a(size, "size");
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

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        ex0<V> ex0Var = this.f8453g;
        if (ex0Var != null) {
            return ex0Var;
        }
        ex0<V> zzaop = zzaop();
        this.f8453g = zzaop;
        return zzaop;
    }

    abstract mx0<Map.Entry<K, V>> zzaon();

    abstract mx0<K> zzaoo();

    abstract ex0<V> zzaop();
}
