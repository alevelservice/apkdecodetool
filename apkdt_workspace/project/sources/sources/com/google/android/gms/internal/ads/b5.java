package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b5 {

    /* renamed from: a, reason: collision with root package name */
    public final List<x4> f5718a;

    public b5(JSONObject jSONObject) {
        boolean z;
        if (qd.a(2)) {
            String valueOf = String.valueOf(jSONObject.toString(2));
            na.e(valueOf.length() != 0 ? "Mediation Response JSON: ".concat(valueOf) : new String("Mediation Response JSON: "));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i2 = -1;
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            try {
                x4 x4Var = new x4(jSONArray.getJSONObject(i3));
                "banner".equalsIgnoreCase(x4Var.f10274c);
                arrayList.add(x4Var);
                if (i2 < 0) {
                    Iterator<String> it = x4Var.f10272a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                z = true;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                    if (z) {
                        i2 = i3;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.f5718a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            optJSONObject.optLong("ad_network_timeout_millis", -1L);
            com.google.android.gms.ads.internal.n.u();
            a5.a(optJSONObject, "click_urls");
            com.google.android.gms.ads.internal.n.u();
            a5.a(optJSONObject, "imp_urls");
            com.google.android.gms.ads.internal.n.u();
            a5.a(optJSONObject, "downloaded_imp_urls");
            com.google.android.gms.ads.internal.n.u();
            a5.a(optJSONObject, "nofill_urls");
            com.google.android.gms.ads.internal.n.u();
            a5.a(optJSONObject, "remote_ping_urls");
            optJSONObject.optBoolean("render_in_browser", false);
            int i4 = (optJSONObject.optLong("refresh", -1L) > 0L ? 1 : (optJSONObject.optLong("refresh", -1L) == 0L ? 0 : -1));
            zzaqd a2 = zzaqd.a(optJSONObject.optJSONArray("rewards"));
            if (a2 != null) {
                String str = a2.f10979e;
                int i5 = a2.f10980f;
            }
            optJSONObject.optBoolean("use_displayed_impression", false);
            optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            optJSONObject.optBoolean("allow_custom_click_gesture", false);
        }
    }
}
