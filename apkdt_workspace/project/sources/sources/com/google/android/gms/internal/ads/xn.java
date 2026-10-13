package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xn implements oe1<zp1> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ns0> f10389a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f10390b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<JSONObject> f10391c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<String> f10392d;

    private xn(af1<ns0> af1Var, af1<zzawv> af1Var2, af1<JSONObject> af1Var3, af1<String> af1Var4) {
        this.f10389a = af1Var;
        this.f10390b = af1Var2;
        this.f10391c = af1Var3;
        this.f10392d = af1Var4;
    }

    public static xn a(af1<ns0> af1Var, af1<zzawv> af1Var2, af1<JSONObject> af1Var3, af1<String> af1Var4) {
        return new xn(af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        this.f10389a.get();
        zzawv zzawvVar = this.f10390b.get();
        JSONObject jSONObject = this.f10391c.get();
        String str = this.f10392d.get();
        boolean equals = "native".equals(str);
        com.google.android.gms.ads.internal.n.c();
        zp1 zp1Var = new zp1(wa.b(), zzawvVar, str, jSONObject, false, equals);
        ue1.a(zp1Var, "Cannot return null from a non-@Nullable @Provides method");
        return zp1Var;
    }
}
