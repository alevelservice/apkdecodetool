package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class sp0 implements ko0<lo0<JSONObject>> {

    /* renamed from: a, reason: collision with root package name */
    private final JSONObject f9416a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sp0(Context context) {
        this.f9416a = r7.a(context);
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<lo0<JSONObject>> a() {
        return gz0.a(new lo0(this) { // from class: com.google.android.gms.internal.ads.rp0

            /* renamed from: a, reason: collision with root package name */
            private final sp0 f9200a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9200a = this;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Object obj) {
                this.f9200a.a((JSONObject) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.f9416a);
        } catch (JSONException unused) {
            na.e("Failed putting version constants.");
        }
    }
}
