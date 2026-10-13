package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t10 extends q10 {

    /* renamed from: b, reason: collision with root package name */
    private final JSONObject f9490b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f9491c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f9492d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f9493e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f9494f;

    public t10(ns0 ns0Var, JSONObject jSONObject) {
        super(ns0Var);
        this.f9490b = nc.a(jSONObject, "tracking_urls_and_actions", "active_view");
        boolean z = false;
        this.f9491c = nc.a(false, jSONObject, "allow_pub_owned_ad_view");
        this.f9492d = nc.a(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f9493e = nc.a(false, jSONObject, "enable_omid");
        if (jSONObject != null && jSONObject.optJSONObject("overlay") != null) {
            z = true;
        }
        this.f9494f = z;
    }

    @Override // com.google.android.gms.internal.ads.q10
    public final boolean a() {
        return this.f9493e;
    }

    @Override // com.google.android.gms.internal.ads.q10
    public final JSONObject b() {
        JSONObject jSONObject = this.f9490b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f8827a.w);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.q10
    public final boolean c() {
        return this.f9494f;
    }

    @Override // com.google.android.gms.internal.ads.q10
    public final boolean d() {
        return this.f9491c;
    }

    @Override // com.google.android.gms.internal.ads.q10
    public final boolean e() {
        return this.f9492d;
    }
}
