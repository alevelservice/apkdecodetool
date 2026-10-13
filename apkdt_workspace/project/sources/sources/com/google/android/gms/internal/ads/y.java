package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y implements o0<fi> {
    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        fi fiVar2 = fiVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                qd.d("No label given for CSI tick.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                qd.d("No timestamp given for CSI tick.");
                return;
            }
            try {
                long c2 = com.google.android.gms.ads.internal.n.j().c() + (Long.parseLong(str4) - com.google.android.gms.ads.internal.n.j().a());
                if (TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                fiVar2.zzxo().a(str2, str3, c2);
                return;
            } catch (NumberFormatException e2) {
                qd.c("Malformed timestamp for CSI tick.", e2);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get(HummerConstants.VALUE);
            if (TextUtils.isEmpty(str5)) {
                qd.d("No value given for CSI experiment.");
                return;
            }
            pw1 a2 = fiVar2.zzxo().a();
            if (a2 == null) {
                qd.d("No ticker for WebView, dropping experiment ID.");
                return;
            } else {
                a2.a("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get(HummerConstants.VALUE);
            if (TextUtils.isEmpty(str7)) {
                qd.d("No value given for CSI extra.");
                return;
            }
            if (TextUtils.isEmpty(str6)) {
                qd.d("No name given for CSI extra.");
                return;
            }
            pw1 a3 = fiVar2.zzxo().a();
            if (a3 == null) {
                qd.d("No ticker for WebView, dropping extra parameter.");
            } else {
                a3.a(str6, str7);
            }
        }
    }
}
