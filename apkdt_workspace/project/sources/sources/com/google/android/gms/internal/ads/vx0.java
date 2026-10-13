package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class vx0<K, V> extends mx0<Map.Entry<K, V>> {

    /* renamed from: g, reason: collision with root package name */
    private final transient nx0<K, V> f10000g;

    /* renamed from: h, reason: collision with root package name */
    private final transient Object[] f10001h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f10002i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vx0(nx0<K, V> nx0Var, Object[] objArr, int i2, int i3) {
        this.f10000g = nx0Var;
        this.f10001h = objArr;
        this.f10002i = i3;
    }

    @Override // com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f10000g.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f10002i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final int zza(Object[] objArr, int i2) {
        return zzaoi().zza(objArr, i2);
    }

    @Override // com.google.android.gms.internal.ads.mx0, com.google.android.gms.internal.ads.ex0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzaoe */
    public final ay0<Map.Entry<K, V>> iterator() {
        return (ay0) zzaoi().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.mx0
    final jx0<Map.Entry<K, V>> zzaom() {
        return new ux0(this);
    }
}
