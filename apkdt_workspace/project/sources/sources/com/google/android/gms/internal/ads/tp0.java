package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tp0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private String f9625a;

    /* renamed from: b, reason: collision with root package name */
    private String f9626b;

    public tp0(String str, String str2) {
        this.f9625a = str;
        this.f9626b = str2;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject a2 = nc.a(jSONObject, "pii");
            a2.put("doritos", this.f9625a);
            a2.put("doritos_v2", this.f9626b);
        } catch (JSONException unused) {
            na.e("Failed putting doritos string.");
        }
    }
}
