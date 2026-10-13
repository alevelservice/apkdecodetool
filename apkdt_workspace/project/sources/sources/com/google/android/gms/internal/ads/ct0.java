package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ct0 {
    public static void a(Throwable th, String str) {
        int zzd = t90.zzd(th);
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(zzd);
        qd.c(sb.toString());
        na.e(str, th);
        if (t90.zzd(th) == 3) {
            return;
        }
        com.google.android.gms.ads.internal.n.g().b(th, str);
    }

    public static void a(Context context, boolean z) {
        if (z) {
            qd.c("This request is sent from a test device.");
            return;
        }
        mu1.a();
        String a2 = gd.a(context);
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 71);
        sb.append("Use AdRequest.Builder.addTestDevice(\"");
        sb.append(a2);
        sb.append("\") to get test ads on this device.");
        qd.c(sb.toString());
    }
}
