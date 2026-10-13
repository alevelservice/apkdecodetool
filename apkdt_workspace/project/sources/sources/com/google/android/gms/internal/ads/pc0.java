package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pc0 extends ob0<Integer, Object> {

    /* renamed from: a, reason: collision with root package name */
    public String f8680a;

    /* renamed from: b, reason: collision with root package name */
    public long f8681b;

    /* renamed from: c, reason: collision with root package name */
    public String f8682c;

    /* renamed from: d, reason: collision with root package name */
    public String f8683d;

    /* renamed from: e, reason: collision with root package name */
    public String f8684e;

    public pc0(String str) {
        this();
        b(str);
    }

    @Override // com.google.android.gms.internal.ads.ob0
    protected final HashMap<Integer, Object> a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f8680a);
        hashMap.put(4, this.f8684e);
        hashMap.put(3, this.f8683d);
        hashMap.put(2, this.f8682c);
        hashMap.put(1, Long.valueOf(this.f8681b));
        return hashMap;
    }

    protected final void b(String str) {
        HashMap a2 = ob0.a(str);
        if (a2 != null) {
            this.f8680a = a2.get(0) == null ? "E" : (String) a2.get(0);
            this.f8681b = a2.get(1) == null ? -1L : ((Long) a2.get(1)).longValue();
            this.f8682c = a2.get(2) == null ? "E" : (String) a2.get(2);
            this.f8683d = a2.get(3) == null ? "E" : (String) a2.get(3);
            this.f8684e = a2.get(4) != null ? (String) a2.get(4) : "E";
        }
    }

    public pc0() {
        this.f8680a = "E";
        this.f8681b = -1L;
        this.f8682c = "E";
        this.f8683d = "E";
        this.f8684e = "E";
    }
}
