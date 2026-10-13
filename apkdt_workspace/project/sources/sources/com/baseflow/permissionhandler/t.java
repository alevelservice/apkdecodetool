package com.baseflow.permissionhandler;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

/* compiled from: ServiceManager.java */
/* loaded from: classes.dex */
final class t {

    /* compiled from: ServiceManager.java */
    @FunctionalInterface
    /* loaded from: classes.dex */
    interface a {
        void a(int i2);
    }

    private boolean b(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            if (i2 >= 19) {
                return c(context);
            }
            return a(context);
        }
        LocationManager locationManager = (LocationManager) context.getSystemService(LocationManager.class);
        if (locationManager == null) {
            return false;
        }
        return locationManager.isLocationEnabled();
    }

    private static boolean c(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return false;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "location_mode") != 0;
        } catch (Settings.SettingNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, Context context, a aVar, o oVar) {
        if (context == null) {
            oVar.a("PermissionHandler.ServiceManager", "Android context cannot be null.");
            return;
        }
        if (i2 == 3 || i2 == 4 || i2 == 5) {
            aVar.a(b(context) ? 1 : 0);
            return;
        }
        if (i2 != 8) {
            if (i2 == 15) {
                aVar.a(Build.VERSION.SDK_INT < 23 ? 2 : 1);
                return;
            } else {
                aVar.a(2);
                return;
            }
        }
        PackageManager packageManager = context.getPackageManager();
        if (!packageManager.hasSystemFeature("android.hardware.telephony")) {
            aVar.a(2);
            return;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null && telephonyManager.getPhoneType() != 0) {
            Intent intent = new Intent("android.intent.action.CALL");
            intent.setData(Uri.parse("tel:123123"));
            if (packageManager.queryIntentActivities(intent, 0).isEmpty()) {
                aVar.a(2);
                return;
            } else if (telephonyManager.getSimState() != 5) {
                aVar.a(0);
                return;
            } else {
                aVar.a(1);
                return;
            }
        }
        aVar.a(2);
    }

    private static boolean a(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return false;
        }
        return !TextUtils.isEmpty(Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
    }
}
