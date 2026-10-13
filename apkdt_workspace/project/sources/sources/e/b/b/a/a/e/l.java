package e.b.b.a.a.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.text.TextUtils;

/* compiled from: NetUtil.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private static long f17066a;

    /* renamed from: b, reason: collision with root package name */
    private static String f17067b;

    public static NetworkInfo a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context) {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - f17066a > 5000) {
            f17067b = c(context);
            f17066a = uptimeMillis;
        }
        if (TextUtils.isEmpty(f17067b) || "no default network".equals(f17067b)) {
            f17067b = c(context);
            f17066a = uptimeMillis;
        }
        if (TextUtils.isEmpty(f17067b)) {
            f17067b = "no default network";
        }
        return f17067b;
    }

    public static String c(Context context) {
        return a(a(context));
    }

    public static String a(NetworkInfo networkInfo) {
        String str = null;
        if (networkInfo == null) {
            return null;
        }
        if ("WIFI".equalsIgnoreCase(networkInfo.getTypeName())) {
            return "WIFI";
        }
        if (!TextUtils.isEmpty(networkInfo.getSubtypeName())) {
            str = networkInfo.getSubtypeName();
        } else if (networkInfo.getSubtype() == 16) {
            str = "GSM";
        } else if (networkInfo.getSubtype() == 17) {
            str = "TD-CDMA";
        } else if (networkInfo.getSubtype() == 18) {
            str = "TDS-HSDPSA";
        } else if (networkInfo.getSubtype() == 19) {
            str = "TDS-HSUPA";
        }
        if (str == null || TextUtils.isEmpty(networkInfo.getExtraInfo())) {
            return str;
        }
        return str + "|" + networkInfo.getExtraInfo();
    }
}
