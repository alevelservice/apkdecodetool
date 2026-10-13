package com.mapbox.mapboxsdk.module.telemetry;

import android.annotation.SuppressLint;
import android.os.Parcel;
import androidx.annotation.FloatRange;

@SuppressLint({"ParcelCreator"})
/* loaded from: classes2.dex */
public class OfflineDownloadEndEvent extends MapBaseEvent {
    private static final String EVENT_NAME = "map.offlineDownload.end";
    private final Double maxZoom;
    private final Double minZoom;
    private long numberOfTilesCompleted;
    private final String shapeForOfflineRegion;
    private long sizeOfResourcesCompleted;
    private String state;
    private String styleURL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OfflineDownloadEndEvent(PhoneState phoneState, String str, @FloatRange(from = 0.0d, to = 25.5d) Double d2, @FloatRange(from = 0.0d, to = 25.5d) Double d3) {
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
        if (obj == null || OfflineDownloadEndEvent.class != obj.getClass()) {
            return false;
        }
        OfflineDownloadEndEvent offlineDownloadEndEvent = (OfflineDownloadEndEvent) obj;
        if (this.sizeOfResourcesCompleted != offlineDownloadEndEvent.sizeOfResourcesCompleted || this.numberOfTilesCompleted != offlineDownloadEndEvent.numberOfTilesCompleted) {
            return false;
        }
        Double d2 = this.minZoom;
        if (d2 == null ? offlineDownloadEndEvent.minZoom != null : !d2.equals(offlineDownloadEndEvent.minZoom)) {
            return false;
        }
        Double d3 = this.maxZoom;
        if (d3 == null ? offlineDownloadEndEvent.maxZoom != null : !d3.equals(offlineDownloadEndEvent.maxZoom)) {
            return false;
        }
        String str = this.shapeForOfflineRegion;
        if (str == null ? offlineDownloadEndEvent.shapeForOfflineRegion != null : !str.equals(offlineDownloadEndEvent.shapeForOfflineRegion)) {
            return false;
        }
        String str2 = this.styleURL;
        if (str2 == null ? offlineDownloadEndEvent.styleURL != null : !str2.equals(offlineDownloadEndEvent.styleURL)) {
            return false;
        }
        String str3 = this.state;
        String str4 = offlineDownloadEndEvent.state;
        return str3 != null ? str3.equals(str4) : str4 == null;
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

    long getNumberOfTilesCompleted() {
        return this.numberOfTilesCompleted;
    }

    String getShapeForOfflineRegion() {
        return this.shapeForOfflineRegion;
    }

    long getSizeOfResourcesCompleted() {
        return this.sizeOfResourcesCompleted;
    }

    String getState() {
        return this.state;
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
        int hashCode4 = (hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.state;
        int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        long j2 = this.sizeOfResourcesCompleted;
        int i2 = (hashCode5 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.numberOfTilesCompleted;
        return i2 + ((int) (j3 ^ (j3 >>> 32)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumberOfTilesCompleted(long j2) {
        this.numberOfTilesCompleted = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSizeOfResourcesCompleted(long j2) {
        this.sizeOfResourcesCompleted = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setState(int i2) {
        this.state = String.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStyleURL(String str) {
        this.styleURL = str;
    }

    public String toString() {
        return "OfflineDownloadEndEvent{, minZoom=" + this.minZoom + ", maxZoom=" + this.maxZoom + ", shapeForOfflineRegion='" + this.shapeForOfflineRegion + "', styleURL='" + this.styleURL + "', sizeOfResourcesCompleted=" + this.sizeOfResourcesCompleted + ", numberOfTilesCompleted=" + this.numberOfTilesCompleted + ", state=" + this.state + '}';
    }

    @Override // com.mapbox.mapboxsdk.module.telemetry.MapBaseEvent, android.os.Parcelable
    public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
    }
}
