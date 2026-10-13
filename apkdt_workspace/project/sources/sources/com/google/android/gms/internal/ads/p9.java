package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p9 {
    public static String a(String str, Context context, boolean z) {
        String e2;
        if ((((Boolean) mu1.e().a(aw1.t0)).booleanValue() && !z) || !com.google.android.gms.ads.internal.n.A().a(context) || TextUtils.isEmpty(str) || (e2 = com.google.android.gms.ads.internal.n.A().e(context)) == null) {
            return str;
        }
        if (((Boolean) mu1.e().a(aw1.l0)).booleanValue()) {
            CharSequence charSequence = (String) mu1.e().a(aw1.m0);
            if (!str.contains(charSequence)) {
                return str;
            }
            if (com.google.android.gms.ads.internal.n.c().a(str)) {
                com.google.android.gms.ads.internal.n.A().d(context, e2);
                return str.replace(charSequence, e2);
            }
            if (!com.google.android.gms.ads.internal.n.c().b(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.n.A().e(context, e2);
            return str.replace(charSequence, e2);
        }
        if (str.contains("fbs_aeid")) {
            return str;
        }
        if (com.google.android.gms.ads.internal.n.c().a(str)) {
            com.google.android.gms.ads.internal.n.A().d(context, e2);
            return a(str, "fbs_aeid", e2).toString();
        }
        if (!com.google.android.gms.ads.internal.n.c().b(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.n.A().e(context, e2);
        return a(str, "fbs_aeid", e2).toString();
    }

    public static String a(Uri uri, Context context) {
        if (!com.google.android.gms.ads.internal.n.A().a(context)) {
            return uri.toString();
        }
        String e2 = com.google.android.gms.ads.internal.n.A().e(context);
        if (e2 == null) {
            return uri.toString();
        }
        if (((Boolean) mu1.e().a(aw1.l0)).booleanValue()) {
            String str = (String) mu1.e().a(aw1.m0);
            String uri2 = uri.toString();
            if (uri2.contains(str)) {
                com.google.android.gms.ads.internal.n.A().d(context, e2);
                return uri2.replace(str, e2);
            }
        } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
            uri = a(uri.toString(), "fbs_aeid", e2);
            com.google.android.gms.ads.internal.n.A().d(context, e2);
        }
        return uri.toString();
    }

    @VisibleForTesting
    private static Uri a(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = str.indexOf("?adurl");
        }
        if (indexOf != -1) {
            int i2 = indexOf + 1;
            return Uri.parse(str.substring(0, i2) + str2 + "=" + str3 + "&" + str.substring(i2));
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }
}
