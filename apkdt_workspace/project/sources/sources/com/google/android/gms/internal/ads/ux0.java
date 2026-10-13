package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ux0<K, V> extends jx0<Map.Entry<K, V>> {
    private final /* synthetic */ vx0 zzgpd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ux0(vx0 vx0Var) {
        this.zzgpd = vx0Var;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i2) {
        int i3;
        Object[] objArr;
        Object[] objArr2;
        i3 = this.zzgpd.f10002i;
        uw0.a(i2, i3);
        objArr = this.zzgpd.f10001h;
        int i4 = i2 * 2;
        vx0 vx0Var = this.zzgpd;
        Object obj = objArr[i4];
        objArr2 = vx0Var.f10001h;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i4 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i2;
        i2 = this.zzgpd.f10002i;
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.ex0
    public final boolean zzaoj() {
        return true;
    }
}
