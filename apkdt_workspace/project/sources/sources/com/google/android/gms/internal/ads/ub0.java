package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ub0 implements z3<vb0> {
    @Override // com.google.android.gms.internal.ads.z3
    public final /* synthetic */ JSONObject d(vb0 vb0Var) {
        vb0 vb0Var2 = vb0Var;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", vb0Var2.f9891c.d());
        jSONObject2.put("signals", vb0Var2.f9890b);
        jSONObject3.put("body", vb0Var2.f9889a.f10529c);
        jSONObject3.put("headers", com.google.android.gms.ads.internal.n.c().a(vb0Var2.f9889a.f10528b));
        jSONObject3.put("response_code", vb0Var2.f9889a.f10527a);
        jSONObject3.put("latency", vb0Var2.f9889a.f10530d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", vb0Var2.f9891c.g());
        return jSONObject;
    }
}
