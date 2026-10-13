package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class le1<K, V, V2> implements oe1<Map<K, V2>> {

    /* renamed from: a, reason: collision with root package name */
    private final Map<K, af1<V>> f7863a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public le1(Map<K, af1<V>> map) {
        this.f7863a = Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, af1<V>> a() {
        return this.f7863a;
    }
}
