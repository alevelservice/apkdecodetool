package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lf1 extends ob0<Integer, Long> {

    /* renamed from: a, reason: collision with root package name */
    public Long f7867a;

    /* renamed from: b, reason: collision with root package name */
    public Long f7868b;

    /* renamed from: c, reason: collision with root package name */
    public Long f7869c;

    /* renamed from: d, reason: collision with root package name */
    public Long f7870d;

    /* renamed from: e, reason: collision with root package name */
    public Long f7871e;

    /* renamed from: f, reason: collision with root package name */
    public Long f7872f;

    /* renamed from: g, reason: collision with root package name */
    public Long f7873g;

    /* renamed from: h, reason: collision with root package name */
    public Long f7874h;

    /* renamed from: i, reason: collision with root package name */
    public Long f7875i;

    /* renamed from: j, reason: collision with root package name */
    public Long f7876j;

    /* renamed from: k, reason: collision with root package name */
    public Long f7877k;

    public lf1(String str) {
        b(str);
    }

    @Override // com.google.android.gms.internal.ads.ob0
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f7867a);
        hashMap.put(1, this.f7868b);
        hashMap.put(2, this.f7869c);
        hashMap.put(3, this.f7870d);
        hashMap.put(4, this.f7871e);
        hashMap.put(5, this.f7872f);
        hashMap.put(6, this.f7873g);
        hashMap.put(7, this.f7874h);
        hashMap.put(8, this.f7875i);
        hashMap.put(9, this.f7876j);
        hashMap.put(10, this.f7877k);
        return hashMap;
    }

    protected final void b(String str) {
        HashMap a2 = ob0.a(str);
        if (a2 != null) {
            this.f7867a = (Long) a2.get(0);
            this.f7868b = (Long) a2.get(1);
            this.f7869c = (Long) a2.get(2);
            this.f7870d = (Long) a2.get(3);
            this.f7871e = (Long) a2.get(4);
            this.f7872f = (Long) a2.get(5);
            this.f7873g = (Long) a2.get(6);
            this.f7874h = (Long) a2.get(7);
            this.f7875i = (Long) a2.get(8);
            this.f7876j = (Long) a2.get(9);
            this.f7877k = (Long) a2.get(10);
        }
    }
}
