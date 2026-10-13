package com.mapbox.android.telemetry;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mapbox.android.telemetry.Event;

@Keep
/* loaded from: classes2.dex */
public class LocationEvent extends Event implements Parcelable {
    private static final String LOCATION = "location";
    private static final String SOURCE_MAPBOX = "mapbox";

    @SerializedName("horizontalAccuracy")
    private Float accuracy;

    @SerializedName("altitude")
    private Double altitude;

    @SerializedName("applicationState")
    private String applicationState;

    @SerializedName("created")
    private final String created;

    @SerializedName("event")
    private final String event;

    @SerializedName("lat")
    private final double latitude;

    @SerializedName("lng")
    private final double longitude;

    @SerializedName("operatingSystem")
    private String operatingSystem;

    @SerializedName("sessionId")
    private final String sessionId;

    @SerializedName("source")
    private String source;
    private static final String OPERATING_SYSTEM = "Android - " + Build.VERSION.RELEASE;
    public static final Parcelable.Creator<LocationEvent> CREATOR = new a();

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<LocationEvent> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationEvent createFromParcel(Parcel parcel) {
            return new LocationEvent(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationEvent[] newArray(int i2) {
            return new LocationEvent[i2];
        }
    }

    /* synthetic */ LocationEvent(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    Float getAccuracy() {
        return this.accuracy;
    }

    Double getAltitude() {
        return this.altitude;
    }

    String getEvent() {
        return this.event;
    }

    double getLatitude() {
        return this.latitude;
    }

    double getLongitude() {
        return this.longitude;
    }

    String getOperatingSystem() {
        return this.operatingSystem;
    }

    String getSource() {
        return this.source;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.android.telemetry.Event
    public Event.a obtainType() {
        return Event.a.LOCATION;
    }

    public void setAccuracy(Float f2) {
        this.accuracy = f2;
    }

    public void setAltitude(Double d2) {
        this.altitude = d2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.event);
        parcel.writeString(this.created);
        parcel.writeString(this.source);
        parcel.writeString(this.sessionId);
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        if (this.altitude == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeDouble(this.altitude.doubleValue());
        }
        parcel.writeString(this.operatingSystem);
        parcel.writeString(this.applicationState);
        if (this.accuracy == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeFloat(this.accuracy.floatValue());
        }
    }

    public LocationEvent(String str, double d2, double d3, String str2) {
        this.altitude = null;
        this.accuracy = null;
        this.event = LOCATION;
        this.created = l0.a();
        this.source = SOURCE_MAPBOX;
        this.sessionId = str;
        this.latitude = d2;
        this.longitude = d3;
        this.operatingSystem = OPERATING_SYSTEM;
        this.applicationState = str2;
    }

    private LocationEvent(Parcel parcel) {
        this.altitude = null;
        this.accuracy = null;
        this.event = parcel.readString();
        this.created = parcel.readString();
        this.source = parcel.readString();
        this.sessionId = parcel.readString();
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.altitude = parcel.readByte() == 0 ? null : Double.valueOf(parcel.readDouble());
        this.operatingSystem = parcel.readString();
        this.applicationState = parcel.readString();
        this.accuracy = parcel.readByte() != 0 ? Float.valueOf(parcel.readFloat()) : null;
    }
}
