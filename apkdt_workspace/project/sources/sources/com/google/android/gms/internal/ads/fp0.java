package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fp0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final String f6699a;

    public fp0(String str) {
        this.f6699a = str;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f6699a);
        } catch (JSONException e2) {
            na.e("Failed putting Ad ID.", e2);
        }
    }
}
