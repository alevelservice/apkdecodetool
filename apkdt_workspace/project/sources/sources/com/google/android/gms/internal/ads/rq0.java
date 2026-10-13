package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class rq0 implements lo0 {

    /* renamed from: a, reason: collision with root package name */
    static final lo0 f9208a = new rq0();

    private rq0() {
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final void a(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451009);
        } catch (JSONException unused) {
        }
    }
}
