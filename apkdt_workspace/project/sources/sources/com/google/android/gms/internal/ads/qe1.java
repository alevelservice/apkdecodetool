package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qe1<K, V> extends le1<K, V, V> {
    static {
        re1.a(Collections.emptyMap());
    }

    private qe1(Map<K, af1<V>> map) {
        super(map);
    }

    public static <K, V> se1<K, V> a(int i2) {
        return new se1<>(i2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        LinkedHashMap c2 = ne1.c(a().size());
        for (Map.Entry<K, af1<V>> entry : a().entrySet()) {
            c2.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(c2);
    }
}
