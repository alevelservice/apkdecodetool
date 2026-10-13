package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final /* synthetic */ class b2 {
    public static void a(y1 y1Var, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        y1Var.a(str, jSONObject.toString());
    }

    public static void b(y1 y1Var, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        qd.a(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        y1Var.zzct(sb.toString());
    }

    public static void a(y1 y1Var, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        y1Var.zzct(sb.toString());
    }

    public static void a(y1 y1Var, String str, Map map) {
        try {
            y1Var.zza(str, com.google.android.gms.ads.internal.n.c().a((Map<String, ?>) map));
        } catch (JSONException unused) {
            qd.d("Could not convert parameters to JSON.");
        }
    }
}
