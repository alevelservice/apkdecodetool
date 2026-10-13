package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nf1 extends ob0<Integer, Long> {

    /* renamed from: a, reason: collision with root package name */
    public Long f8332a;

    /* renamed from: b, reason: collision with root package name */
    public Long f8333b;

    /* renamed from: c, reason: collision with root package name */
    public Long f8334c;

    /* renamed from: d, reason: collision with root package name */
    public Long f8335d;

    public nf1(String str) {
        b(str);
    }

    @Override // com.google.android.gms.internal.ads.ob0
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f8332a);
        hashMap.put(1, this.f8333b);
        hashMap.put(2, this.f8334c);
        hashMap.put(3, this.f8335d);
        return hashMap;
    }

    protected final void b(String str) {
        HashMap a2 = ob0.a(str);
        if (a2 != null) {
            this.f8332a = (Long) a2.get(0);
            this.f8333b = (Long) a2.get(1);
            this.f8334c = (Long) a2.get(2);
            this.f8335d = (Long) a2.get(3);
        }
    }
}
