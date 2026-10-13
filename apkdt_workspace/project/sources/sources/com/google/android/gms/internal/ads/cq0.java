package com.google.android.gms.internal.ads;

import android.location.Location;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cq0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final Location f6086a;

    public cq0(Location location) {
        this.f6086a = location;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (this.f6086a != null) {
                JSONObject jSONObject3 = new JSONObject();
                Float valueOf = Float.valueOf(this.f6086a.getAccuracy() * 1000.0f);
                Long valueOf2 = Long.valueOf(this.f6086a.getTime() * 1000);
                Long valueOf3 = Long.valueOf((long) (this.f6086a.getLatitude() * 1.0E7d));
                Long valueOf4 = Long.valueOf((long) (this.f6086a.getLongitude() * 1.0E7d));
                jSONObject3.put("radius", valueOf);
                jSONObject3.put("lat", valueOf3);
                jSONObject3.put("long", valueOf4);
                jSONObject3.put("time", valueOf2);
                jSONObject2.put("uule", jSONObject3);
            }
        } catch (JSONException e2) {
            na.e("Failed adding location to the request JSON.", e2);
        }
    }
}
