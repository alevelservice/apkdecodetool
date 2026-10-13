package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y9 {

    /* renamed from: a, reason: collision with root package name */
    private final long f10509a;

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f10510b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    private final List<String> f10511c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, b5> f10512d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    private String f10513e;

    /* renamed from: f, reason: collision with root package name */
    private String f10514f;

    /* renamed from: g, reason: collision with root package name */
    private JSONObject f10515g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f10516h;

    public y9(String str, long j2) {
        JSONObject optJSONObject;
        this.f10516h = false;
        this.f10514f = str;
        this.f10509a = j2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f10515g = new JSONObject(str);
            if (this.f10515g.optInt(H5PluginHandler.ZIM_IDENTIFY_STATUS, -1) != 1) {
                this.f10516h = false;
                qd.d("App settings could not be fetched successfully.");
                return;
            }
            this.f10516h = true;
            this.f10513e = this.f10515g.optString("app_id");
            JSONArray optJSONArray = this.f10515g.optJSONArray("ad_unit_id_settings");
            if (optJSONArray != null) {
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    JSONObject jSONObject = optJSONArray.getJSONObject(i2);
                    String optString = jSONObject.optString("format");
                    String optString2 = jSONObject.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                        if ("interstitial".equalsIgnoreCase(optString)) {
                            this.f10511c.add(optString2);
                        } else if ("rewarded".equalsIgnoreCase(optString) && (optJSONObject = jSONObject.optJSONObject("mediation_config")) != null) {
                            this.f10512d.put(optString2, new b5(optJSONObject));
                        }
                    }
                }
            }
            JSONArray optJSONArray2 = this.f10515g.optJSONArray("persistable_banner_ad_unit_ids");
            if (optJSONArray2 != null) {
                for (int i3 = 0; i3 < optJSONArray2.length(); i3++) {
                    this.f10510b.add(optJSONArray2.optString(i3));
                }
            }
        } catch (JSONException e2) {
            qd.c("Exception occurred while processing app setting json", e2);
            com.google.android.gms.ads.internal.n.g().a(e2, "AppSettings.parseAppSettingsJson");
        }
    }

    public final long a() {
        return this.f10509a;
    }

    public final boolean b() {
        return this.f10516h;
    }

    public final String c() {
        return this.f10514f;
    }

    public final String d() {
        return this.f10513e;
    }

    public final Map<String, b5> e() {
        return this.f10512d;
    }

    public final JSONObject f() {
        return this.f10515g;
    }
}
