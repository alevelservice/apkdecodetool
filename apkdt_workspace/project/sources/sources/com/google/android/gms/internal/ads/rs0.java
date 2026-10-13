package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonWriter;
import androidx.annotation.Nullable;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rs0 implements sc {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f9223a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f9224b;

    /* renamed from: c, reason: collision with root package name */
    public final JSONObject f9225c;

    /* renamed from: d, reason: collision with root package name */
    private final JSONObject f9226d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rs0(JsonReader jsonReader) {
        this.f9226d = nc.c(jsonReader);
        this.f9223a = this.f9226d.optString("ad_html", null);
        this.f9224b = this.f9226d.optString("ad_base_url", null);
        this.f9225c = this.f9226d.optJSONObject("ad_json");
    }

    @Override // com.google.android.gms.internal.ads.sc
    public final void a(JsonWriter jsonWriter) {
        nc.a(jsonWriter, this.f9226d);
    }
}
