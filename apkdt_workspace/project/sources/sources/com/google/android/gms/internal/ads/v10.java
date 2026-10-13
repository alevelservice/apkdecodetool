package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v10 implements oe1<t10> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ns0> f9849a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<JSONObject> f9850b;

    public v10(af1<ns0> af1Var, af1<JSONObject> af1Var2) {
        this.f9849a = af1Var;
        this.f9850b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new t10(this.f9849a.get(), this.f9850b.get());
    }
}
