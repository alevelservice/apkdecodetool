package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y7 implements j7 {

    /* renamed from: a, reason: collision with root package name */
    private t3<JSONObject, JSONObject> f10491a;

    public y7(Context context) {
        c4 a2 = com.google.android.gms.ads.internal.n.p().a(context, zzawv.j());
        x3<JSONObject> x3Var = b4.f5712b;
        a2.a("google.afma.request.getAdDictionary", x3Var, x3Var);
        c4 a3 = com.google.android.gms.ads.internal.n.p().a(context, zzawv.j());
        x3<JSONObject> x3Var2 = b4.f5712b;
        this.f10491a = a3.a("google.afma.sdkConstants.getSdkConstants", x3Var2, x3Var2);
    }

    @Override // com.google.android.gms.internal.ads.j7
    public final t3<JSONObject, JSONObject> e() {
        return this.f10491a;
    }
}
