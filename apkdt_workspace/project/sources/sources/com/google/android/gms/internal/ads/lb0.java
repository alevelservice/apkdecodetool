package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class lb0 implements fu0 {

    /* renamed from: a, reason: collision with root package name */
    static final fu0 f7856a = new lb0();

    private lb0() {
    }

    @Override // com.google.android.gms.internal.ads.fu0
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optInt("error_code") == 6) {
            return b4.f5713c.a(jSONObject.getJSONObject("response"));
        }
        throw new ib0(jSONObject.getString("error_reason"), jSONObject.optInt("error_code", 0));
    }
}
