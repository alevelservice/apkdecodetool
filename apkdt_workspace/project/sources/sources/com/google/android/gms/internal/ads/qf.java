package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qf {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8880a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8881b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8882c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8883d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8884e;

    /* renamed from: f, reason: collision with root package name */
    public final int f8885f;

    /* renamed from: g, reason: collision with root package name */
    public final int f8886g;

    /* renamed from: h, reason: collision with root package name */
    public final int f8887h;

    /* renamed from: i, reason: collision with root package name */
    public final int f8888i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f8889j;

    /* renamed from: k, reason: collision with root package name */
    public final int f8890k;

    public qf(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.f8880a = a(jSONObject, "aggressive_media_codec_release", aw1.G);
        this.f8881b = b(jSONObject, "byte_buffer_precache_limit", aw1.o);
        this.f8882c = b(jSONObject, "exo_cache_buffer_size", aw1.u);
        this.f8883d = b(jSONObject, "exo_connect_timeout_millis", aw1.f5675k);
        this.f8884e = c(jSONObject, "exo_player_version", aw1.f5674j);
        this.f8885f = b(jSONObject, "exo_read_timeout_millis", aw1.f5676l);
        this.f8886g = b(jSONObject, "load_check_interval_bytes", aw1.m);
        this.f8887h = b(jSONObject, "player_precache_limit", aw1.n);
        this.f8888i = b(jSONObject, "socket_receive_buffer_size", aw1.p);
        this.f8889j = a(jSONObject, "use_cache_data_source", aw1.o2);
        this.f8890k = b(jSONObject, "min_retry_count", aw1.r);
    }

    private static boolean a(JSONObject jSONObject, String str, pv1<Boolean> pv1Var) {
        return a(jSONObject, str, ((Boolean) mu1.e().a(pv1Var)).booleanValue());
    }

    private static int b(JSONObject jSONObject, String str, pv1<Integer> pv1Var) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) mu1.e().a(pv1Var)).intValue();
    }

    private static String c(JSONObject jSONObject, String str, pv1<String> pv1Var) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException unused) {
            }
        }
        return (String) mu1.e().a(pv1Var);
    }

    private static boolean a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        return z;
    }
}
