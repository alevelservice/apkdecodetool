package com.mapbox.android.telemetry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mapbox.android.telemetry.Event;
import java.util.HashMap;

@Keep
/* loaded from: classes2.dex */
public class VisionEvent extends Event implements Parcelable {
    public static final Parcelable.Creator<VisionEvent> CREATOR = new a();
    private static final String VIS_GENERAL = "vision.general";

    @SerializedName("contents")
    private HashMap<String, Object> contents;

    @SerializedName("event")
    private final String event;

    @SerializedName("name")
    private String name;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<VisionEvent> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VisionEvent createFromParcel(Parcel parcel) {
            return new VisionEvent(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VisionEvent[] newArray(int i2) {
            return new VisionEvent[i2];
        }
    }

    /* synthetic */ VisionEvent(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public HashMap<String, Object> getContents() {
        return this.contents;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.android.telemetry.Event
    public Event.a obtainType() {
        return Event.a.VIS_GENERAL;
    }

    public void setContents(HashMap<String, Object> hashMap) {
        this.contents = hashMap;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.event);
        parcel.writeString(this.name);
        parcel.writeSerializable(this.contents);
    }

    VisionEvent() {
        this.name = "";
        this.contents = new HashMap<>();
        this.event = VIS_GENERAL;
    }

    private VisionEvent(Parcel parcel) {
        this.name = "";
        this.contents = new HashMap<>();
        this.event = parcel.readString();
        this.name = parcel.readString();
        this.contents = (HashMap) parcel.readSerializable();
    }
}
