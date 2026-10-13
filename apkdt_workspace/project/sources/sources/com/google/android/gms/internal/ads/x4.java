package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class x4 {

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f10272a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10273b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f10274c;

    public x4(JSONObject jSONObject) {
        jSONObject.optString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        this.f10272a = Collections.unmodifiableList(arrayList);
        jSONObject.optString("allocation_id", null);
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "clickurl");
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "imp_urls");
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "downloaded_imp_urls");
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "fill_urls");
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "video_start_urls");
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "video_complete_urls");
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "video_reward_urls");
        jSONObject.optString("transaction_id");
        jSONObject.optString("valid_from_timestamp");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        if (optJSONObject != null) {
            com.google.android.gms.ads.internal.n.u();
            a5.a(optJSONObject, "manual_impression_urls");
        }
        if (optJSONObject != null) {
            optJSONObject.toString();
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
        this.f10273b = optJSONObject2 != null ? optJSONObject2.toString() : null;
        if (optJSONObject2 != null) {
            optJSONObject2.optString("class_name");
        }
        jSONObject.optString("html_template", null);
        jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        if (optJSONObject3 != null) {
            optJSONObject3.toString();
        }
        com.google.android.gms.ads.internal.n.u();
        a5.a(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        if (optJSONObject4 != null) {
            optJSONObject4.toString();
        }
        this.f10274c = jSONObject.optString("response_type", null);
        jSONObject.optLong("ad_network_timeout_millis", -1L);
    }
}
