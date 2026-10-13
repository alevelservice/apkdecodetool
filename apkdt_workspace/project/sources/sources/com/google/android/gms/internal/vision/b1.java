package com.google.android.gms.internal.vision;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class b1<K, V> extends a1<Map.Entry<K, V>> {

    /* renamed from: g, reason: collision with root package name */
    private final transient x0<K, V> f12306g;

    /* renamed from: h, reason: collision with root package name */
    private final transient Object[] f12307h;

    /* renamed from: i, reason: collision with root package name */
    private final transient int f12308i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(x0<K, V> x0Var, Object[] objArr, int i2, int i3) {
        this.f12306g = x0Var;
        this.f12307h = objArr;
        this.f12308i = i3;
    }

    @Override // com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f12306g.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f12308i;
    }

    @Override // com.google.android.gms.internal.vision.t0
    final int zza(Object[] objArr, int i2) {
        return zzcc().zza(objArr, i2);
    }

    @Override // com.google.android.gms.internal.vision.a1, com.google.android.gms.internal.vision.t0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zzby */
    public final i1<Map.Entry<K, V>> iterator() {
        return (i1) zzcc().iterator();
    }

    @Override // com.google.android.gms.internal.vision.a1
    final w0<Map.Entry<K, V>> zzch() {
        return new e1(this);
    }
}
