package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class he1 extends ob0<Integer, Object> {

    /* renamed from: a, reason: collision with root package name */
    public Long f7050a;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f7051b;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f7052c;

    public he1(String str) {
        b(str);
    }

    @Override // com.google.android.gms.internal.ads.ob0
    protected final HashMap<Integer, Object> a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f7050a);
        hashMap.put(1, this.f7051b);
        hashMap.put(2, this.f7052c);
        return hashMap;
    }

    protected final void b(String str) {
        HashMap a2 = ob0.a(str);
        if (a2 != null) {
            this.f7050a = (Long) a2.get(0);
            this.f7051b = (Boolean) a2.get(1);
            this.f7052c = (Boolean) a2.get(2);
        }
    }
}
