package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xp0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private List<String> f10411a;

    public xp0(List<String> list) {
        this.f10411a = list;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("eid", TextUtils.join(",", this.f10411a));
        } catch (JSONException unused) {
            na.e("Failed putting experiment ids.");
        }
    }
}
