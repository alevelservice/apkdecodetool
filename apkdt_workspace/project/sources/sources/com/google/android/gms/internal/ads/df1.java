package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class df1 extends ob0<Integer, Long> {

    /* renamed from: a, reason: collision with root package name */
    public Long f6213a;

    /* renamed from: b, reason: collision with root package name */
    public Long f6214b;

    public df1(String str) {
        b(str);
    }

    @Override // com.google.android.gms.internal.ads.ob0
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f6213a);
        hashMap.put(1, this.f6214b);
        return hashMap;
    }

    protected final void b(String str) {
        HashMap a2 = ob0.a(str);
        if (a2 != null) {
            this.f6213a = (Long) a2.get(0);
            this.f6214b = (Long) a2.get(1);
        }
    }
}
