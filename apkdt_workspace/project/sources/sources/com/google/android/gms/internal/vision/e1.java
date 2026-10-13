package com.google.android.gms.internal.vision;

import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class e1<K, V> extends w0<Map.Entry<K, V>> {
    private final /* synthetic */ b1 zzmb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(b1 b1Var) {
        this.zzmb = b1Var;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i2) {
        int i3;
        Object[] objArr;
        Object[] objArr2;
        i3 = this.zzmb.f12308i;
        j0.a(i2, i3);
        objArr = this.zzmb.f12307h;
        int i4 = i2 * 2;
        b1 b1Var = this.zzmb;
        Object obj = objArr[i4];
        objArr2 = b1Var.f12307h;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i4 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i2;
        i2 = this.zzmb.f12308i;
        return i2;
    }
}
