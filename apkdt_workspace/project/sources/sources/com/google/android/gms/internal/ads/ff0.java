package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class ff0 implements qy0 {

    /* renamed from: a, reason: collision with root package name */
    static final qy0 f6634a = new ff0();

    private ff0() {
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final qz0 b(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("success")) {
            return gz0.a(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new u3("process json failed");
    }
}
