package e.d.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import androidx.annotation.RequiresApi;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.Locale;

/* compiled from: DeviceData.java */
/* loaded from: classes.dex */
public class c {
    public static String a() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        int hashCode = nextElement.hashCode();
                        return String.format(Locale.US, "%d.%d.%d.%d", Integer.valueOf(hashCode & 255), Integer.valueOf((hashCode >> 8) & 255), Integer.valueOf((hashCode >> 16) & 255), Integer.valueOf((hashCode >> 24) & 255));
                    }
                }
            }
            return null;
        } catch (SocketException unused) {
            return null;
        }
    }

    private static String a(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                return "3G";
            case 13:
            case 18:
            case 19:
                return "4G";
            case 16:
            default:
                return null;
        }
    }

    public static String b(Context context) {
        return context.getPackageName();
    }

    public static String c(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
    }

    public static String d(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return "";
        }
        if (i2 >= 26) {
            return telephonyManager.getImei();
        }
        return androidx.core.content.a.a(context, "android.permission.READ_PHONE_STATE") == -1 ? "" : telephonyManager.getDeviceId();
    }

    public static String e(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT > 23) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null) {
                return "-";
            }
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null) {
                return "NETWORK_IS_UNKNOWN";
            }
            if (networkCapabilities.hasTransport(1)) {
                return "WIFI";
            }
            if (networkCapabilities.hasTransport(0)) {
                return a(((TelephonyManager) context.getSystemService("phone")).getDataNetworkType());
            }
            return null;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "-";
        }
        int type = activeNetworkInfo.getType();
        if (type == 1) {
            return "WIFI";
        }
        if (type == 0) {
            return a(activeNetworkInfo.getSubtype());
        }
        return null;
    }

    public static String f(Context context) {
        if (Build.VERSION.SDK_INT >= 22) {
            return g(context);
        }
        return h(context);
    }

    @RequiresApi(api = 22)
    private static String g(Context context) {
        SubscriptionManager subscriptionManager;
        if (androidx.core.content.a.a(context, "android.permission.READ_PHONE_STATE") != 0 || (subscriptionManager = (SubscriptionManager) context.getApplicationContext().getSystemService("telephony_subscription_service")) == null) {
            return "";
        }
        SubscriptionInfo activeSubscriptionInfoForSimSlotIndex = subscriptionManager.getActiveSubscriptionInfoForSimSlotIndex(0);
        if (activeSubscriptionInfoForSimSlotIndex != null) {
            return String.valueOf(activeSubscriptionInfoForSimSlotIndex.getSubscriptionId());
        }
        SubscriptionInfo activeSubscriptionInfoForSimSlotIndex2 = subscriptionManager.getActiveSubscriptionInfoForSimSlotIndex(1);
        return activeSubscriptionInfoForSimSlotIndex2 != null ? String.valueOf(activeSubscriptionInfoForSimSlotIndex2.getSubscriptionId()) : "";
    }

    @TargetApi(19)
    private static String h(Context context) {
        if (androidx.core.content.a.a(context, "android.permission.READ_PHONE_STATE") == 0) {
            try {
                return ((TelephonyManager) context.getSystemService("phone")).getSimSerialNumber();
            } catch (Exception e2) {
                String str = "sim serial could not be retrieved: " + e2.getMessage();
            }
        }
        return "";
    }

    public static String i(Context context) {
        return String.valueOf(WifiManager.calculateSignalLevel(((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getRssi(), 5));
    }

    public static String a(Context context) {
        return Integer.valueOf(context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("level", -1)).toString();
    }
}
