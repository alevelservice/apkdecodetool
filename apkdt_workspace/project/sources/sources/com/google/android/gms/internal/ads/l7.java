package com.google.android.gms.internal.ads;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l7 {

    /* renamed from: a, reason: collision with root package name */
    private final List<String> f7826a;

    /* renamed from: b, reason: collision with root package name */
    private final String f7827b;

    /* renamed from: c, reason: collision with root package name */
    private final String f7828c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f7829d;

    /* renamed from: e, reason: collision with root package name */
    private String f7830e;

    /* renamed from: f, reason: collision with root package name */
    private final int f7831f;

    /* renamed from: g, reason: collision with root package name */
    private final JSONObject f7832g;

    public l7(JSONObject jSONObject) {
        this.f7830e = jSONObject.optString(HummerConstants.URL);
        this.f7827b = jSONObject.optString("base_uri");
        this.f7828c = jSONObject.optString("post_parameters");
        String optString = jSONObject.optString("drt_include");
        this.f7829d = optString != null && (optString.equals("1") || optString.equals("true"));
        jSONObject.optString("request_id");
        jSONObject.optString("type");
        String optString2 = jSONObject.optString("errors");
        this.f7826a = optString2 == null ? null : Arrays.asList(optString2.split(","));
        this.f7831f = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f7832g = optJSONObject == null ? new JSONObject() : optJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
    }

    public final int a() {
        return this.f7831f;
    }

    public final String b() {
        return this.f7830e;
    }

    public final List<String> c() {
        return this.f7826a;
    }

    public final String d() {
        return this.f7827b;
    }

    public final String e() {
        return this.f7828c;
    }

    public final boolean f() {
        return this.f7829d;
    }

    public final JSONObject g() {
        return this.f7832g;
    }
}
