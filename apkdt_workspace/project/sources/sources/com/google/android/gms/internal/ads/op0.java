package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class op0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f8573a;

    public op0(JSONObject jSONObject) {
        this.f8573a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("cache_state", this.f8573a);
        } catch (JSONException unused) {
            na.e("Unable to get cache_state");
        }
    }
}
