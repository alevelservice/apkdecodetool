package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.l.a;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zo0 implements lo0<JSONObject> {

    /* renamed from: a, reason: collision with root package name */
    private final a.C0077a f10821a;

    /* renamed from: b, reason: collision with root package name */
    private final String f10822b;

    public zo0(a.C0077a c0077a, Context context, String str) {
        this.f10821a = c0077a;
        this.f10822b = str;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject a2 = nc.a(jSONObject, "pii");
            String str = null;
            boolean z = false;
            if (this.f10821a != null) {
                str = this.f10821a.a();
                z = this.f10821a.b();
            }
            if (!TextUtils.isEmpty(str)) {
                a2.put("rdid", str);
                a2.put("is_lat", z);
                a2.put("idtype", "adid");
            } else {
                a2.put("pdid", this.f10822b);
                a2.put("pdidtype", "ssaid");
            }
        } catch (JSONException e2) {
            na.e("Failed putting Ad ID.", e2);
        }
    }
}
