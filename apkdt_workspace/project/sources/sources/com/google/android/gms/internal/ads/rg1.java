package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rg1<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, AtomicReference<T>> f9133a = new HashMap();

    public final AtomicReference<T> a(String str) {
        synchronized (this) {
            if (!this.f9133a.containsKey(str)) {
                this.f9133a.put(str, new AtomicReference<>());
            }
        }
        return this.f9133a.get(str);
    }
}
