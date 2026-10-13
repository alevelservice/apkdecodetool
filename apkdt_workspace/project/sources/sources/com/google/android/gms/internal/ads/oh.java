package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class oh implements o0<tf> {
    private static Integer a(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = map.get(str);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length());
            sb.append("Precache invalid numeric parameter '");
            sb.append(str);
            sb.append("': ");
            sb.append(str2);
            qd.d(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(tf tfVar, Map map) {
        jh jhVar;
        tf tfVar2 = tfVar;
        if (qd.a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
            sb.append("Precache GMSG: ");
            sb.append(valueOf);
            qd.a(sb.toString());
        }
        com.google.android.gms.ads.internal.n.y();
        if (map.containsKey("abort")) {
            if (gh.a(tfVar2)) {
                return;
            }
            qd.d("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        strArr2[i2] = jSONArray.getString(i2);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    String valueOf2 = String.valueOf(str2);
                    qd.d(valueOf2.length() != 0 ? "Malformed demuxed URL list for precache: ".concat(valueOf2) : new String("Malformed demuxed URL list for precache: "));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (gh.b(tfVar2) != null) {
                qd.d("Precache task is already running.");
                return;
            }
            if (tfVar2.zzxm() == null) {
                qd.d("Precache requires a dependency provider.");
                return;
            }
            qf qfVar = new qf((String) map.get("flags"));
            Integer a2 = a((Map<String, String>) map, "player");
            if (a2 == null) {
                a2 = 0;
            }
            jhVar = tfVar2.zzxm().f4520a.a(tfVar2, a2.intValue(), null, qfVar);
            new eh(tfVar2, jhVar, str, strArr).b();
        } else {
            eh b2 = gh.b(tfVar2);
            if (b2 != null) {
                jhVar = b2.f6424d;
            } else {
                qd.d("Precache must specify a source.");
                return;
            }
        }
        Integer a3 = a((Map<String, String>) map, "minBufferMs");
        if (a3 != null) {
            jhVar.a(a3.intValue());
        }
        Integer a4 = a((Map<String, String>) map, "maxBufferMs");
        if (a4 != null) {
            jhVar.b(a4.intValue());
        }
        Integer a5 = a((Map<String, String>) map, "bufferForPlaybackMs");
        if (a5 != null) {
            jhVar.c(a5.intValue());
        }
        Integer a6 = a((Map<String, String>) map, "bufferForPlaybackAfterRebufferMs");
        if (a6 != null) {
            jhVar.d(a6.intValue());
        }
    }
}
