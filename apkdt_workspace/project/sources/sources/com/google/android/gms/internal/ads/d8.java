package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d8 {
    public static zw0 a(uo1 uo1Var) {
        long j2;
        long j3;
        boolean z;
        long j4;
        long j5;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = uo1Var.f9786c;
        String str = map.get("Date");
        long a2 = str != null ? a(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i2 = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            j2 = 0;
            int i3 = 0;
            j3 = 0;
            while (i2 < split.length) {
                String trim = split[i2].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j2 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j3 = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    i3 = 1;
                }
                i2++;
            }
            i2 = i3;
            z = true;
        } else {
            j2 = 0;
            j3 = 0;
            z = false;
        }
        String str3 = map.get("Expires");
        long a3 = str3 != null ? a(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long a4 = str4 != null ? a(str4) : 0L;
        String str5 = map.get("ETag");
        if (z) {
            j4 = currentTimeMillis + (j2 * 1000);
            if (i2 == 0) {
                Long.signum(j3);
                j5 = (j3 * 1000) + j4;
            }
            j5 = j4;
        } else if (a2 <= 0 || a3 < a2) {
            j4 = 0;
            j5 = j4;
        } else {
            j5 = (a3 - a2) + currentTimeMillis;
            j4 = j5;
        }
        zw0 zw0Var = new zw0();
        zw0Var.f10856a = uo1Var.f9785b;
        zw0Var.f10857b = str5;
        zw0Var.f10861f = j4;
        zw0Var.f10860e = j5;
        zw0Var.f10858c = a2;
        zw0Var.f10859d = a4;
        zw0Var.f10862g = map;
        zw0Var.f10863h = uo1Var.f9787d;
        return zw0Var;
    }

    private static long a(String str) {
        try {
            return a().parse(str).getTime();
        } catch (ParseException e2) {
            w1.a(e2, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(long j2) {
        return a().format(new Date(j2));
    }

    private static SimpleDateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
