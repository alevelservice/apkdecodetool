package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gq0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private Bundle f6960a;

    public gq0(Bundle bundle) {
        this.f6960a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f6960a != null) {
            try {
                nc.a(nc.a(jSONObject2, "device"), "play_store").put("parental_controls", com.google.android.gms.ads.internal.n.c().a(this.f6960a));
            } catch (JSONException unused) {
                na.e("Failed putting parental controls bundle.");
            }
        }
    }
}
