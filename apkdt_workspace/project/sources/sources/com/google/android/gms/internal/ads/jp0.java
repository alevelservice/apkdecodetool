package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jp0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final JSONObject f7547a;

    public jp0(JSONObject jSONObject) {
        this.f7547a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject a2 = nc.a(jSONObject, "content_info");
            JSONObject jSONObject2 = this.f7547a;
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                a2.put(next, jSONObject2.get(next));
            }
        } catch (JSONException unused) {
            na.e("Failed putting app indexing json.");
        }
    }
}
