package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t41 extends ob0<Integer, Long> {

    /* renamed from: a, reason: collision with root package name */
    public long f9508a;

    /* renamed from: b, reason: collision with root package name */
    public long f9509b;

    public t41() {
        this.f9508a = -1L;
        this.f9509b = -1L;
    }

    @Override // com.google.android.gms.internal.ads.ob0
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f9508a));
        hashMap.put(1, Long.valueOf(this.f9509b));
        return hashMap;
    }

    protected final void b(String str) {
        HashMap a2 = ob0.a(str);
        if (a2 != null) {
            this.f9508a = ((Long) a2.get(0)).longValue();
            this.f9509b = ((Long) a2.get(1)).longValue();
        }
    }

    public t41(String str) {
        this();
        b(str);
    }
}
