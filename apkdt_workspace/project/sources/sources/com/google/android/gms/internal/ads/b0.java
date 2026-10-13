package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public static final o0<fi> f5685a = a0.f5489a;

    /* renamed from: b, reason: collision with root package name */
    public static final o0<fi> f5686b = d0.f6131a;

    /* renamed from: c, reason: collision with root package name */
    public static final o0<fi> f5687c = c0.f5889a;

    /* renamed from: d, reason: collision with root package name */
    public static final o0<fi> f5688d = new h0();

    /* renamed from: e, reason: collision with root package name */
    public static final o0<fi> f5689e = new g0();

    /* renamed from: f, reason: collision with root package name */
    public static final o0<fi> f5690f = f0.f6548a;

    /* renamed from: g, reason: collision with root package name */
    public static final o0<Object> f5691g = new j0();

    /* renamed from: h, reason: collision with root package name */
    public static final o0<fi> f5692h = new i0();

    /* renamed from: i, reason: collision with root package name */
    public static final o0<fi> f5693i = e0.f6325a;

    /* renamed from: j, reason: collision with root package name */
    public static final o0<fi> f5694j = new l0();

    /* renamed from: k, reason: collision with root package name */
    public static final o0<fi> f5695k = new k0();

    /* renamed from: l, reason: collision with root package name */
    public static final o0<tf> f5696l = new ch();
    public static final o0<tf> m = new fh();
    public static final o0<fi> n = new y();
    public static final v0 o = new v0();
    public static final o0<fi> p = new n0();
    public static final o0<fi> q = new m0();
    public static final o0<fi> r = new p0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(nj njVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            t11 zzzb = njVar.zzzb();
            if (zzzb != null) {
                zzzb.a().a(parseInt, parseInt2, parseInt3);
            }
        } catch (NumberFormatException unused) {
            qd.d("Could not parse touch parameters from gmsg.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void b(fj fjVar, Map map) {
        PackageManager packageManager = fjVar.getContext().getPackageManager();
        try {
            try {
                JSONArray jSONArray = new JSONObject((String) map.get(Constants$ScionAnalytics$MessageType.DATA_MESSAGE)).getJSONArray("intents");
                JSONObject jSONObject = new JSONObject();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        String optString = jSONObject2.optString("id");
                        String optString2 = jSONObject2.optString("u");
                        String optString3 = jSONObject2.optString("i");
                        String optString4 = jSONObject2.optString("m");
                        String optString5 = jSONObject2.optString("p");
                        String optString6 = jSONObject2.optString("c");
                        jSONObject2.optString("f");
                        jSONObject2.optString("e");
                        String optString7 = jSONObject2.optString("intent_url");
                        Intent intent = null;
                        if (!TextUtils.isEmpty(optString7)) {
                            try {
                                intent = Intent.parseUri(optString7, 0);
                            } catch (URISyntaxException e2) {
                                String valueOf = String.valueOf(optString7);
                                qd.b(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                            }
                        }
                        if (intent == null) {
                            intent = new Intent();
                            if (!TextUtils.isEmpty(optString2)) {
                                intent.setData(Uri.parse(optString2));
                            }
                            if (!TextUtils.isEmpty(optString3)) {
                                intent.setAction(optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                intent.setType(optString4);
                            }
                            if (!TextUtils.isEmpty(optString5)) {
                                intent.setPackage(optString5);
                            }
                            if (!TextUtils.isEmpty(optString6)) {
                                String[] split = optString6.split("/", 2);
                                if (split.length == 2) {
                                    intent.setComponent(new ComponentName(split[0], split[1]));
                                }
                            }
                        }
                        try {
                            jSONObject.put(optString, packageManager.resolveActivity(intent, AntDetector.ACTION_ID_SAMPLE) != null);
                        } catch (JSONException e3) {
                            qd.b("Error constructing openable urls response.", e3);
                        }
                    } catch (JSONException e4) {
                        qd.b("Error parsing the intent data.", e4);
                    }
                }
                ((p1) fjVar).zza("openableIntents", jSONObject);
            } catch (JSONException unused) {
                ((p1) fjVar).zza("openableIntents", new JSONObject());
            }
        } catch (JSONException unused2) {
            ((p1) fjVar).zza("openableIntents", new JSONObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void c(fj fjVar, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            qd.d("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = fjVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), AntDetector.ACTION_ID_SAMPLE) == null) {
                z = false;
            }
            hashMap.put(str2, Boolean.valueOf(z));
        }
        ((p1) fjVar).zza("openableURLs", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(fj fjVar, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            qd.d("URL missing from httpTrack GMSG.");
        } else {
            new wc(fjVar.getContext(), ((mj) fjVar).zzxp().f11000e, str).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(p1 p1Var, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            qd.d("URL missing from click GMSG.");
            return;
        }
        Uri parse = Uri.parse(str);
        try {
            t11 zzzb = ((nj) p1Var).zzzb();
            if (zzzb != null && zzzb.a(parse)) {
                parse = zzzb.a(parse, ((fj) p1Var).getContext(), ((pj) p1Var).getView(), ((fj) p1Var).zzxl());
            }
        } catch (w31 unused) {
            String valueOf = String.valueOf(str);
            qd.d(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
        }
        fj fjVar = (fj) p1Var;
        new wc(fjVar.getContext(), ((mj) p1Var).zzxp().f11000e, p9.a(parse, fjVar.getContext())).b();
    }
}
