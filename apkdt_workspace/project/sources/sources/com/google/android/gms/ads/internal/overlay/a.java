package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.aw1;
import com.google.android.gms.internal.ads.mu1;
import com.google.android.gms.internal.ads.na;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.wa;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a {
    public static boolean a(Context context, zzb zzbVar, p pVar) {
        int i2 = 0;
        if (zzbVar == null) {
            qd.d("No intent data for launcher overlay.");
            return false;
        }
        aw1.a(context);
        Intent intent = zzbVar.f4580l;
        if (intent != null) {
            return a(context, intent, pVar);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzbVar.f4574f)) {
            qd.d("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzbVar.f4575g)) {
            intent2.setDataAndType(Uri.parse(zzbVar.f4574f), zzbVar.f4575g);
        } else {
            intent2.setData(Uri.parse(zzbVar.f4574f));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzbVar.f4576h)) {
            intent2.setPackage(zzbVar.f4576h);
        }
        if (!TextUtils.isEmpty(zzbVar.f4577i)) {
            String[] split = zzbVar.f4577i.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzbVar.f4577i);
                qd.d(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str = zzbVar.f4578j;
        if (!TextUtils.isEmpty(str)) {
            try {
                i2 = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                qd.d("Could not parse intent flags.");
            }
            intent2.addFlags(i2);
        }
        if (((Boolean) mu1.e().a(aw1.w2)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) mu1.e().a(aw1.v2)).booleanValue()) {
                com.google.android.gms.ads.internal.n.c();
                wa.b(context, intent2);
            }
        }
        return a(context, intent2, pVar);
    }

    private static boolean a(Context context, Intent intent, p pVar) {
        try {
            String valueOf = String.valueOf(intent.toURI());
            na.e(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            com.google.android.gms.ads.internal.n.c();
            wa.a(context, intent);
            if (pVar == null) {
                return true;
            }
            pVar.c();
            return true;
        } catch (ActivityNotFoundException e2) {
            qd.d(e2.getMessage());
            return false;
        }
    }
}
