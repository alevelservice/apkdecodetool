package com.google.firebase.crashlytics.d.o;

import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.firebase.crashlytics.d.h.s;
import java.util.Locale;
import org.json.JSONObject;

/* compiled from: SettingsV3JsonTransform.java */
/* loaded from: classes.dex */
class h implements g {
    @Override // com.google.firebase.crashlytics.d.o.g
    public com.google.firebase.crashlytics.d.o.i.f a(s sVar, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new com.google.firebase.crashlytics.d.o.i.f(a(sVar, optInt2, jSONObject), a(jSONObject.getJSONObject("fabric"), jSONObject.getJSONObject("app")), a(), a(jSONObject.getJSONObject("features")), optInt, optInt2);
    }

    private static com.google.firebase.crashlytics.d.o.i.b a(JSONObject jSONObject, JSONObject jSONObject2) {
        String string = jSONObject2.getString(H5PluginHandler.ZIM_IDENTIFY_STATUS);
        boolean equals = "new".equals(string);
        String string2 = jSONObject.getString("bundle_id");
        return new com.google.firebase.crashlytics.d.o.i.b(string, equals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2), String.format(Locale.US, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(Locale.US, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, jSONObject.getString("org_id"), jSONObject2.optBoolean("update_required", false), jSONObject2.optInt("report_upload_variant", 0), jSONObject2.optInt("native_report_upload_variant", 0));
    }

    private static com.google.firebase.crashlytics.d.o.i.c a(JSONObject jSONObject) {
        return new com.google.firebase.crashlytics.d.o.i.c(jSONObject.optBoolean("collect_reports", true));
    }

    private static com.google.firebase.crashlytics.d.o.i.d a() {
        return new com.google.firebase.crashlytics.d.o.i.d(8, 4);
    }

    private static long a(s sVar, long j2, JSONObject jSONObject) {
        if (jSONObject.has("expires_at")) {
            return jSONObject.optLong("expires_at");
        }
        return (j2 * 1000) + sVar.a();
    }
}
