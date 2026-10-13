package com.mapbox.mapboxsdk.module.telemetry;

import android.annotation.SuppressLint;
import android.os.Parcel;
import androidx.annotation.FloatRange;

@SuppressLint({"ParcelCreator"})
/* loaded from: classes2.dex */
public class OfflineDownloadStartEvent extends MapBaseEvent {
    private static final String EVENT_NAME = "map.offlineDownload.start";
    private final Double maxZoom;
    private final Double minZoom;
    private final String shapeForOfflineRegion;
    private String styleURL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OfflineDownloadStartEvent(PhoneState phoneState, String str, @FloatRange(from = 0.0d, to = 25.5d) Double d2, @FloatRange(from = 0.0d, to = 25.5d) Double d3) {
        super(phoneState);
        this.shapeForOfflineRegion = str;
        this.minZoom = d2;
        this.maxZoom = d3;
    }

    @Override // com.mapbox.mapboxsdk.module.telemetry.MapBaseEvent, android.os.Parcelable
    public /* bridge */ /* synthetic */ int describeContents() {
        return super.describeContents();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || OfflineDownloadStartEvent.class != obj.getClass()) {
            return false;
        }
        OfflineDownloadStartEvent offlineDownloadStartEvent = (OfflineDownloadStartEvent) obj;
        Double d2 = this.minZoom;
        if (d2 == null ? offlineDownloadStartEvent.minZoom != null : !d2.equals(offlineDownloadStartEvent.minZoom)) {
            return false;
        }
        Double d3 = this.maxZoom;
        if (d3 == null ? offlineDownloadStartEvent.maxZoom != null : !d3.equals(offlineDownloadStartEvent.maxZoom)) {
            return false;
        }
        String str = this.shapeForOfflineRegion;
        if (str == null ? offlineDownloadStartEvent.shapeForOfflineRegion != null : !str.equals(offlineDownloadStartEvent.shapeForOfflineRegion)) {
            return false;
        }
        String str2 = this.styleURL;
        String str3 = offlineDownloadStartEvent.styleURL;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    @Override // com.mapbox.mapboxsdk.module.telemetry.MapBaseEvent
    String getEventName() {
        return EVENT_NAME;
    }

    Double getMaxZoom() {
        return this.maxZoom;
    }

    Double getMinZoom() {
        return this.minZoom;
    }

    String getShapeForOfflineRegion() {
        return this.shapeForOfflineRegion;
    }

    String getStyleURL() {
        return this.styleURL;
    }

    public int hashCode() {
        Double d2 = this.minZoom;
        int hashCode = (d2 != null ? d2.hashCode() : 0) * 31;
        Double d3 = this.maxZoom;
        int hashCode2 = (hashCode + (d3 != null ? d3.hashCode() : 0)) * 31;
        String str = this.shapeForOfflineRegion;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.styleURL;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStyleURL(String str) {
        this.styleURL = str;
    }

    public String toString() {
        return "OfflineDownloadStartEvent{, minZoom=" + this.minZoom + ", maxZoom=" + this.maxZoom + ", shapeForOfflineRegion='" + this.shapeForOfflineRegion + "', styleURL='" + this.styleURL + "'}";
    }

    @Override // com.mapbox.mapboxsdk.module.telemetry.MapBaseEvent, android.os.Parcelable
    public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
    }
}
