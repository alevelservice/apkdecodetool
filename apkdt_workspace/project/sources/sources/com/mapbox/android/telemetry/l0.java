package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.mapbox.android.accounts.v1.AccountsConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* compiled from: TelemetryUtils.java */
/* loaded from: classes2.dex */
public class l0 {

    /* renamed from: a, reason: collision with root package name */
    private static final SimpleDateFormat f15617a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: b, reason: collision with root package name */
    private static final Locale f15618b = Locale.US;

    /* renamed from: c, reason: collision with root package name */
    private static final String f15619c = "Android - " + Build.VERSION.RELEASE;

    /* renamed from: d, reason: collision with root package name */
    private static final Map<Integer, String> f15620d = new a();

    /* compiled from: TelemetryUtils.java */
    /* loaded from: classes2.dex */
    static class a extends HashMap<Integer, String> {
        a() {
            put(7, "1xRTT");
            put(4, "CDMA");
            put(2, "EDGE");
            put(14, "EHRPD");
            put(5, "EVDO_0");
            put(6, "EVDO_A");
            put(12, "EVDO_B");
            put(1, "GPRS");
            put(8, "HSDPA");
            put(10, "HSPA");
            put(15, "HSPAP");
            put(9, "HSUPA");
            put(11, "IDEN");
            put(13, "LTE");
            put(3, "UMTS");
            put(0, "Unknown");
        }
    }

    public static String a() {
        return f15617a.format(new Date());
    }

    public static String b(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (codePointAt > 31 && codePointAt < 127) {
                i2 += Character.charCount(codePointAt);
            } else {
                j.c cVar = new j.c();
                cVar.a(str, 0, i2);
                while (i2 < length) {
                    int codePointAt2 = str.codePointAt(i2);
                    cVar.d((codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2);
                    i2 += Character.charCount(codePointAt2);
                }
                return cVar.y();
            }
        }
        return str;
    }

    public static String c() {
        Context context = x.n;
        if (context == null) {
            return d();
        }
        String string = i(context).getString("mapboxVendorId", "");
        return a(string) ? d() : string;
    }

    public static boolean d(Context context) {
        Intent j2 = j(context);
        if (j2 == null) {
            return false;
        }
        int intExtra = j2.getIntExtra("plugged", -1);
        return (intExtra == 2) || (intExtra == 1);
    }

    private static String e(Context context) {
        try {
            String packageName = context.getPackageName();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            return String.format(f15618b, "%s/%s/%s", packageName, packageInfo.versionName, Integer.valueOf(packageInfo.versionCode));
        } catch (Exception unused) {
            return "";
        }
    }

    private static String f(Context context) {
        try {
            String packageName = context.getPackageName();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            return String.format(f15618b, "%s/%s (%s; %s; %s)", c(context), packageInfo.versionName == null ? ZimPlatform.REASON_0 : packageInfo.versionName, packageName, String.format(f15618b, "v%d", Integer.valueOf(packageInfo.versionCode)), f15619c);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int g(Context context) {
        Intent j2 = j(context);
        if (j2 == null) {
            return -1;
        }
        int intExtra = j2.getIntExtra("level", -1);
        int intExtra2 = j2.getIntExtra("scale", -1);
        if (intExtra < 0 || intExtra2 <= 0) {
            return -1;
        }
        return Math.round((intExtra / intExtra2) * 100.0f);
    }

    public static String h(Context context) {
        return f15620d.get(Integer.valueOf(((TelephonyManager) context.getSystemService("phone")).getNetworkType()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SharedPreferences i(Context context) {
        return context.getSharedPreferences(AccountsConstants.MAPBOX_SHARED_PREFERENCES, 0);
    }

    @Nullable
    private static Intent j(Context context) {
        try {
            return context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        } catch (Exception e2) {
            String.format("%s: Failed receiver registration for ACTION_BATTERY_CHANGED", e2.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, Context context) {
        String e2 = e(context);
        return TextUtils.isEmpty(e2) ? str : b(String.format(f15618b, "%s %s", e2, str));
    }

    private static String d() {
        String b2 = b();
        Context context = x.n;
        if (context == null) {
            return b2;
        }
        SharedPreferences.Editor edit = i(context).edit();
        edit.putString("mapboxVendorId", b2);
        edit.apply();
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData.getBoolean("com.mapbox.AdjustWakeUp", false);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return false;
    }

    private static String c(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "(unknown)");
    }

    public static String b() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Context context) {
        String f2 = f(context);
        String b2 = b(String.format(f15618b, "%s %s", f2, e.m.a.a.b.b(context.getAssets()).a()));
        return TextUtils.isEmpty(b2) ? f2 : b2;
    }
}
