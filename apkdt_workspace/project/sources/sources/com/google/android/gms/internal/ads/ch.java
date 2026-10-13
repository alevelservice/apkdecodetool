package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ch implements o0<tf> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f6010a;

    private static int a(Context context, Map<String, String> map, String str, int i2) {
        String str2 = map.get(str);
        if (str2 == null) {
            return i2;
        }
        try {
            mu1.a();
            return gd.b(context, Integer.parseInt(str2));
        } catch (NumberFormatException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
            sb.append("Could not parse ");
            sb.append(str);
            sb.append(" in a video GMSG: ");
            sb.append(str2);
            qd.d(sb.toString());
            return i2;
        }
    }

    private static void a(zzayc zzaycVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzaycVar.zzct(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                qd.d(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzaycVar.zzcu(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzaycVar.zzcv(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzaycVar.zzcw(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzaycVar.zzcx(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(tf tfVar, Map map) {
        int i2;
        tf tfVar2 = tfVar;
        String str = (String) map.get("action");
        if (str == null) {
            qd.d("Action missing from video GMSG.");
            return;
        }
        if (qd.a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(jSONObject2);
            qd.a(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                qd.d("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                tfVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                qd.d("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                qd.d("No MIME types specified for decoder properties inspection.");
                zzayc.zza(tfVar2, "missingMimeTypes");
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                qd.d("Video decoder properties available on API versions >= 16.");
                zzayc.zza(tfVar2, "deficientApiVersion");
                return;
            }
            HashMap hashMap = new HashMap();
            for (String str4 : str3.split(",")) {
                hashMap.put(str4, ed.a(str4.trim()));
            }
            zzayc.zza(tfVar2, hashMap);
            return;
        }
        Cif zzxi = tfVar2.zzxi();
        if (zzxi == null) {
            qd.d("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = "new".equals(str);
        boolean equals2 = "position".equals(str);
        if (!equals && !equals2) {
            zzbbu zzxj = tfVar2.zzxj();
            if (zzxj != null) {
                if ("timeupdate".equals(str)) {
                    String str5 = (String) map.get("currentTime");
                    if (str5 == null) {
                        qd.d("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        zzxj.zze(Float.parseFloat(str5));
                        return;
                    } catch (NumberFormatException unused2) {
                        String valueOf = String.valueOf(str5);
                        qd.d(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                        return;
                    }
                }
                if (HummerConstants.HUMMER_SKIP.equals(str)) {
                    zzxj.zzaal();
                    return;
                }
            }
            zzayc c2 = zzxi.c();
            if (c2 == null) {
                zzayc.zza(tfVar2);
                return;
            }
            if ("click".equals(str)) {
                Context context = tfVar2.getContext();
                int a2 = a(context, map, "x", 0);
                int a3 = a(context, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, a2, a3, 0);
                c2.zze(obtain);
                obtain.recycle();
                return;
            }
            if ("currentTime".equals(str)) {
                String str6 = (String) map.get("time");
                if (str6 == null) {
                    qd.d("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    c2.seekTo((int) (Float.parseFloat(str6) * 1000.0f));
                    return;
                } catch (NumberFormatException unused3) {
                    String valueOf2 = String.valueOf(str6);
                    qd.d(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                    return;
                }
            }
            if ("hide".equals(str)) {
                c2.setVisibility(4);
                return;
            }
            if ("load".equals(str)) {
                c2.zzhh();
                return;
            }
            if ("loadControl".equals(str)) {
                a(c2, (Map<String, String>) map);
                return;
            }
            if ("muted".equals(str)) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    c2.zzww();
                    return;
                } else {
                    c2.zzwx();
                    return;
                }
            }
            if ("pause".equals(str)) {
                c2.pause();
                return;
            }
            if ("play".equals(str)) {
                c2.play();
                return;
            }
            if ("show".equals(str)) {
                c2.setVisibility(0);
                return;
            }
            if ("src".equals(str)) {
                String str7 = (String) map.get("src");
                String[] strArr = {str7};
                String str8 = (String) map.get("demuxed");
                if (str8 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str8);
                        String[] strArr2 = new String[jSONArray.length()];
                        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                            strArr2[i3] = jSONArray.getString(i3);
                        }
                        strArr = strArr2;
                    } catch (JSONException unused4) {
                        String valueOf3 = String.valueOf(str8);
                        qd.d(valueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(valueOf3) : new String("Malformed demuxed URL list for playback: "));
                        strArr = new String[]{str7};
                    }
                }
                c2.zzc(str7, strArr);
                return;
            }
            if ("touchMove".equals(str)) {
                Context context2 = tfVar2.getContext();
                c2.zza(a(context2, map, "dx", 0), a(context2, map, "dy", 0));
                if (this.f6010a) {
                    return;
                }
                tfVar2.zzsr();
                this.f6010a = true;
                return;
            }
            if ("volume".equals(str)) {
                String str9 = (String) map.get("volume");
                if (str9 == null) {
                    qd.d("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    c2.setVolume(Float.parseFloat(str9));
                    return;
                } catch (NumberFormatException unused5) {
                    String valueOf4 = String.valueOf(str9);
                    qd.d(valueOf4.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf4) : new String("Could not parse volume parameter from volume video GMSG: "));
                    return;
                }
            }
            if ("watermark".equals(str)) {
                c2.zzwy();
                return;
            } else {
                String valueOf5 = String.valueOf(str);
                qd.d(valueOf5.length() != 0 ? "Unknown video action: ".concat(valueOf5) : new String("Unknown video action: "));
                return;
            }
        }
        Context context3 = tfVar2.getContext();
        int a4 = a(context3, map, "x", 0);
        int a5 = a(context3, map, "y", 0);
        int a6 = a(context3, map, "w", -1);
        int a7 = a(context3, map, "h", -1);
        int min = Math.min(a6, tfVar2.zzxr() - a4);
        int min2 = Math.min(a7, tfVar2.zzxq() - a5);
        try {
            i2 = Integer.parseInt((String) map.get("player"));
        } catch (NumberFormatException unused6) {
            i2 = 0;
        }
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
        if (equals && zzxi.c() == null) {
            zzxi.a(a4, a5, min, min2, i2, parseBoolean, new qf((String) map.get("flags")));
            zzayc c3 = zzxi.c();
            if (c3 != null) {
                a(c3, (Map<String, String>) map);
                return;
            }
            return;
        }
        zzxi.a(a4, a5, min, min2);
    }
}
