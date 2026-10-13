package com.google.firebase.crashlytics.d.o;

import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.firebase.crashlytics.d.h.s;
import org.json.JSONObject;

/* compiled from: DefaultSettingsJsonTransform.java */
/* loaded from: classes.dex */
class b implements g {
    private static com.google.firebase.crashlytics.d.o.i.c b(JSONObject jSONObject) {
        return new com.google.firebase.crashlytics.d.o.i.c(jSONObject.optBoolean("collect_reports", true));
    }

    private static com.google.firebase.crashlytics.d.o.i.d c(JSONObject jSONObject) {
        return new com.google.firebase.crashlytics.d.o.i.d(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    @Override // com.google.firebase.crashlytics.d.o.g
    public com.google.firebase.crashlytics.d.o.i.f a(s sVar, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new com.google.firebase.crashlytics.d.o.i.f(a(sVar, optInt2, jSONObject), a(jSONObject.getJSONObject("app")), c(jSONObject.getJSONObject("session")), b(jSONObject.getJSONObject("features")), optInt, optInt2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.firebase.crashlytics.d.o.i.e a(s sVar) {
        JSONObject jSONObject = new JSONObject();
        return new com.google.firebase.crashlytics.d.o.i.f(a(sVar, 3600L, jSONObject), null, c(jSONObject), b(jSONObject), 0, 3600);
    }

    private static com.google.firebase.crashlytics.d.o.i.b a(JSONObject jSONObject) {
        return new com.google.firebase.crashlytics.d.o.i.b(jSONObject.getString(H5PluginHandler.ZIM_IDENTIFY_STATUS), jSONObject.getString(HummerConstants.URL), jSONObject.getString("reports_url"), jSONObject.getString("ndk_reports_url"), jSONObject.optBoolean("update_required", false));
    }

    private static long a(s sVar, long j2, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        return (j2 * 1000) + sVar.a();
    }
}
