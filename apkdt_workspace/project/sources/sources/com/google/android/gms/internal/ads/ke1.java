package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class ke1<K, V, V2> {

    /* renamed from: a, reason: collision with root package name */
    final LinkedHashMap<K, af1<V>> f7677a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ke1(int i2) {
        this.f7677a = ne1.c(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ke1<K, V, V2> a(K k2, af1<V> af1Var) {
        LinkedHashMap<K, af1<V>> linkedHashMap = this.f7677a;
        ue1.a(k2, "key");
        ue1.a(af1Var, "provider");
        linkedHashMap.put(k2, af1Var);
        return this;
    }
}
