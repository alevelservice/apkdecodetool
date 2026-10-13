package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b10 implements oe1<zp1> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zzawv> f5699a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<String> f5700b;

    public b10(af1<zzawv> af1Var, af1<String> af1Var2) {
        this.f5699a = af1Var;
        this.f5700b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zzawv zzawvVar = this.f5699a.get();
        String str = this.f5700b.get();
        com.google.android.gms.ads.internal.n.c();
        zp1 zp1Var = new zp1(wa.b(), zzawvVar, str, new JSONObject(), false, true);
        ue1.a(zp1Var, "Cannot return null from a non-@Nullable @Provides method");
        return zp1Var;
    }
}
