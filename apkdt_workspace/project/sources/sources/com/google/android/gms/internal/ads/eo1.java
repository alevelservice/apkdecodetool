package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eo1 {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, String> f6481a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private Map<String, String> f6482b;

    public final synchronized Map<String, String> a() {
        if (this.f6482b == null) {
            this.f6482b = Collections.unmodifiableMap(new HashMap(this.f6481a));
        }
        return this.f6482b;
    }
}
