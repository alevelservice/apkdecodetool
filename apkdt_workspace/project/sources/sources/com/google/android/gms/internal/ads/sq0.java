package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sq0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, Object> f9426a;

    public sq0(Map<String, Object> map) {
        this.f9426a = map;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", com.google.android.gms.ads.internal.n.c().a(this.f9426a));
        } catch (JSONException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            na.e(valueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(valueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
