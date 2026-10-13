package com.mapbox.mapboxsdk.module.telemetry;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.mapbox.android.telemetry.l0;

/* loaded from: classes2.dex */
class PhoneState {
    private static final String NO_CARRIER = "EMPTY_CARRIER";
    private static final int NO_NETWORK = -1;
    private float accessibilityFontScale;
    private int batteryLevel;
    private String carrier;
    private String cellularNetworkType;
    private String created;
    private Orientation orientation;
    private boolean pluggedIn;
    private float resolution;
    private boolean wifi;

    PhoneState() {
    }

    private boolean isConnectedToWifi(@NonNull Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager == null) {
                return false;
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (wifiManager.isWifiEnabled()) {
                return connectionInfo.getNetworkId() != -1;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private String obtainCellularCarrier(@NonNull Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return NO_CARRIER;
        }
        String networkOperatorName = telephonyManager.getNetworkOperatorName();
        return TextUtils.isEmpty(networkOperatorName) ? NO_CARRIER : networkOperatorName;
    }

    private float obtainDisplayDensity(@NonNull Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.density;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getAccessibilityFontScale() {
        return this.accessibilityFontScale;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getBatteryLevel() {
        return this.batteryLevel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCarrier() {
        return this.carrier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCellularNetworkType() {
        return this.cellularNetworkType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCreated() {
        return this.created;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getOrientation() {
        return this.orientation.getOrientation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getResolution() {
        return this.resolution;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPluggedIn() {
        return this.pluggedIn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isWifi() {
        return this.wifi;
    }

    void setAccessibilityFontScale(float f2) {
        this.accessibilityFontScale = f2;
    }

    void setBatteryLevel(int i2) {
        this.batteryLevel = i2;
    }

    void setCarrier(String str) {
        this.carrier = str;
    }

    void setCellularNetworkType(String str) {
        this.cellularNetworkType = str;
    }

    void setCreated(String str) {
        this.created = str;
    }

    void setOrientation(Orientation orientation) {
        this.orientation = orientation;
    }

    void setPluggedIn(boolean z) {
        this.pluggedIn = z;
    }

    void setResolution(float f2) {
        this.resolution = f2;
    }

    void setWifi(boolean z) {
        this.wifi = z;
    }

    /* loaded from: classes2.dex */
    enum Orientation {
        ORIENTATION_PORTRAIT("Portrait"),
        ORIENTATION_LANDSCAPE("Landscape");

        private String orientation;

        Orientation(String str) {
            this.orientation = str;
        }

        public static Orientation getOrientation(int i2) {
            if (1 == i2) {
                return ORIENTATION_PORTRAIT;
            }
            return ORIENTATION_LANDSCAPE;
        }

        public String getOrientation() {
            return this.orientation;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhoneState(@NonNull Context context) {
        this.created = l0.a();
        this.batteryLevel = l0.g(context);
        this.pluggedIn = l0.d(context);
        this.cellularNetworkType = l0.h(context);
        this.orientation = Orientation.getOrientation(context.getResources().getConfiguration().orientation);
        this.accessibilityFontScale = context.getResources().getConfiguration().fontScale;
        this.carrier = obtainCellularCarrier(context);
        this.resolution = obtainDisplayDensity(context);
        this.wifi = isConnectedToWifi(context);
    }
}
