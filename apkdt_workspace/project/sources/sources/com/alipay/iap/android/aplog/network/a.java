package com.alipay.iap.android.aplog.network;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

/* compiled from: NetworkUtils.java */
/* loaded from: classes.dex */
public class a {
    public static int a(Context context) {
        NetworkInfo b2 = b(context);
        if (b2 == null || !b2.isConnected()) {
            return 0;
        }
        int type = b2.getType();
        if (type == 1) {
            return 3;
        }
        if (type == 0) {
            return a(b2);
        }
        return 0;
    }

    public static NetworkInfo b(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            String str = "getActiveNetworkInfo exception " + th.getMessage();
            return null;
        }
    }

    @TargetApi(3)
    public static int a(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return 0;
        }
        return a(networkInfo.getSubtype());
    }

    public static int a(int i2) {
        try {
            Integer num = (Integer) TelephonyManager.class.getMethod("getNetworkClass", Integer.TYPE).invoke(TelephonyManager.class, Integer.valueOf(i2));
            if (num.intValue() == 1) {
                return 1;
            }
            if (num.intValue() == 2) {
                return 2;
            }
            return num.intValue() == 3 ? 4 : 0;
        } catch (Throwable th) {
            String str = "TelephonyManager#getNetworkClass exception: " + th.toString();
            if (i2 != 18) {
                switch (i2) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        break;
                    case 13:
                        return 4;
                    default:
                        return 0;
                }
            }
            return 2;
        }
    }
}
