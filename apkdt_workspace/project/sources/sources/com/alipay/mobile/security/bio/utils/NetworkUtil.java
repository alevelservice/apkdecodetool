package com.alipay.mobile.security.bio.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.BufferedReader;
import java.io.FileReader;

/* loaded from: classes.dex */
public class NetworkUtil {
    private static final String ETH0_MAC_ADDR = "/sys/class/net/eth0/address";

    public static String getMacAddress() {
        try {
            return loadFileAsString(ETH0_MAC_ADDR).substring(0, 17);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getNetworkType(Context context) {
        String str = "wifi";
        String str2 = "";
        if (context == null) {
            return "";
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                return "";
            }
            str2 = activeNetworkInfo.getTypeName().toLowerCase();
            if (!"wifi".equals(str2)) {
                str = "2g";
                try {
                    switch (activeNetworkInfo.getSubtype()) {
                        case 3:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return "3g";
                        case 13:
                            str = "4g";
                            break;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str2 = "2g";
                    String str3 = "NetworkTypeUtil" + e.toString();
                    return str2;
                }
            }
            return str;
        } catch (Exception e3) {
            e = e3;
        }
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo[] allNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    private static String loadFileAsString(String str) {
        StringBuffer stringBuffer = new StringBuffer(1000);
        BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
        char[] cArr = new char[1024];
        while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                stringBuffer.append(String.valueOf(cArr, 0, read));
            } else {
                bufferedReader.close();
                return stringBuffer.toString();
            }
        }
    }
}
