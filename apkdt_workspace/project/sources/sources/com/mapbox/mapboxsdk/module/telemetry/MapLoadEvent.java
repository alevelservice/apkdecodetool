package com.mapbox.mapboxsdk.module.telemetry;

import android.annotation.SuppressLint;
import android.os.Build;

@SuppressLint({"ParcelCreator"})
/* loaded from: classes2.dex */
class MapLoadEvent extends MapBaseEvent {
    private static final String EVENT_NAME = "map.load";
    private final float accessibilityFontScale;
    private final int batteryLevel;
    private final String carrier;
    private final String cellularNetworkType;
    private final String model;
    private final String operatingSystem;
    private final String orientation;
    private final boolean pluggedIn;
    private final float resolution;
    private final String sdkIdentifier;
    private final String sdkVersion;
    private final String userId;
    private final boolean wifi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapLoadEvent(String str, PhoneState phoneState) {
        super(phoneState);
        this.operatingSystem = "Android - " + Build.VERSION.RELEASE;
        this.sdkIdentifier = "mapbox-maps-android";
        this.sdkVersion = "9.2.0";
        this.model = Build.MODEL;
        this.userId = str;
        this.batteryLevel = phoneState.getBatteryLevel();
        this.pluggedIn = phoneState.isPluggedIn();
        this.cellularNetworkType = phoneState.getCellularNetworkType();
        this.carrier = phoneState.getCarrier();
        this.resolution = phoneState.getResolution();
        this.accessibilityFontScale = phoneState.getAccessibilityFontScale();
        this.wifi = phoneState.isWifi();
        this.orientation = phoneState.getOrientation();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MapLoadEvent.class != obj.getClass()) {
            return false;
        }
        MapLoadEvent mapLoadEvent = (MapLoadEvent) obj;
        if (Float.compare(mapLoadEvent.resolution, this.resolution) != 0 || Float.compare(mapLoadEvent.accessibilityFontScale, this.accessibilityFontScale) != 0 || this.batteryLevel != mapLoadEvent.batteryLevel || this.pluggedIn != mapLoadEvent.pluggedIn || this.wifi != mapLoadEvent.wifi || !this.operatingSystem.equals(mapLoadEvent.operatingSystem)) {
            return false;
        }
        String str = this.model;
        if (str == null ? mapLoadEvent.model != null : !str.equals(mapLoadEvent.model)) {
            return false;
        }
        String str2 = this.userId;
        if (str2 == null ? mapLoadEvent.userId != null : !str2.equals(mapLoadEvent.userId)) {
            return false;
        }
        String str3 = this.carrier;
        if (str3 == null ? mapLoadEvent.carrier != null : !str3.equals(mapLoadEvent.carrier)) {
            return false;
        }
        String str4 = this.cellularNetworkType;
        if (str4 == null ? mapLoadEvent.cellularNetworkType != null : !str4.equals(mapLoadEvent.cellularNetworkType)) {
            return false;
        }
        String str5 = this.orientation;
        String str6 = mapLoadEvent.orientation;
        return str5 != null ? str5.equals(str6) : str6 == null;
    }

    float getAccessibilityFontScale() {
        return this.accessibilityFontScale;
    }

    int getBatteryLevel() {
        return this.batteryLevel;
    }

    String getCarrier() {
        return this.carrier;
    }

    String getCellularNetworkType() {
        return this.cellularNetworkType;
    }

    @Override // com.mapbox.mapboxsdk.module.telemetry.MapBaseEvent
    String getEventName() {
        return EVENT_NAME;
    }

    String getModel() {
        return this.model;
    }

    String getOperatingSystem() {
        return this.operatingSystem;
    }

    String getOrientation() {
        return this.orientation;
    }

    float getResolution() {
        return this.resolution;
    }

    String getSdkIdentifier() {
        return "mapbox-maps-android";
    }

    String getSdkVersion() {
        return "9.2.0";
    }

    String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.operatingSystem;
        int hashCode = (((((str != null ? str.hashCode() : 0) * 31) + "mapbox-maps-android".hashCode()) * 31) + "9.2.0".hashCode()) * 31;
        String str2 = this.model;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.userId;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.carrier;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.cellularNetworkType;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.orientation;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        float f2 = this.resolution;
        int floatToIntBits = (hashCode6 + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
        float f3 = this.accessibilityFontScale;
        return ((((((floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0)) * 31) + this.batteryLevel) * 31) + (this.pluggedIn ? 1 : 0)) * 31) + (this.wifi ? 1 : 0);
    }

    boolean isPluggedIn() {
        return this.pluggedIn;
    }

    boolean isWifi() {
        return this.wifi;
    }

    public String toString() {
        return "MapLoadEvent{, operatingSystem='" + this.operatingSystem + "', sdkIdentifier='mapbox-maps-android', sdkVersion='9.2.0', model='" + this.model + "', userId='" + this.userId + "', carrier='" + this.carrier + "', cellularNetworkType='" + this.cellularNetworkType + "', orientation='" + this.orientation + "', resolution=" + this.resolution + ", accessibilityFontScale=" + this.accessibilityFontScale + ", batteryLevel=" + this.batteryLevel + ", pluggedIn=" + this.pluggedIn + ", wifi=" + this.wifi + '}';
    }
}
