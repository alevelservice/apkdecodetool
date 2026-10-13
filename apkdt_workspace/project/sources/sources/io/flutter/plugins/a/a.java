package io.flutter.plugins.a;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import io.reactivex.rxjava3.annotations.SchedulerSupport;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Connectivity.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private ConnectivityManager f19330a;

    /* renamed from: b, reason: collision with root package name */
    private WifiManager f19331b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ConnectivityManager connectivityManager, WifiManager wifiManager) {
        this.f19330a = connectivityManager;
        this.f19331b = wifiManager;
    }

    private String f() {
        NetworkInfo activeNetworkInfo = this.f19330a.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return SchedulerSupport.NONE;
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? (type == 4 || type == 5) ? "mobile" : (type == 6 || type == 9) ? "wifi" : SchedulerSupport.NONE : "wifi" : "mobile";
    }

    private WifiInfo g() {
        WifiManager wifiManager = this.f19331b;
        if (wifiManager == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public ConnectivityManager a() {
        return this.f19330a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        if (Build.VERSION.SDK_INT >= 23) {
            NetworkCapabilities networkCapabilities = this.f19330a.getNetworkCapabilities(this.f19330a.getActiveNetwork());
            if (networkCapabilities == null) {
                return SchedulerSupport.NONE;
            }
            if (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(3)) {
                return "wifi";
            }
            if (networkCapabilities.hasTransport(0)) {
                return "mobile";
            }
        }
        return f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        WifiInfo g2 = g();
        if (g2 != null) {
            return g2.getBSSID();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        WifiManager wifiManager = this.f19331b;
        WifiInfo connectionInfo = wifiManager != null ? wifiManager.getConnectionInfo() : null;
        int ipAddress = connectionInfo != null ? connectionInfo.getIpAddress() : 0;
        if (ipAddress != 0) {
            return String.format("%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        WifiInfo g2 = g();
        String ssid = g2 != null ? g2.getSSID() : null;
        return ssid != null ? ssid.replaceAll("\"", "") : ssid;
    }
}
