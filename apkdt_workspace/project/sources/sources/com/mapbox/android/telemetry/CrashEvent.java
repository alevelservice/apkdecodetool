package com.mapbox.android.telemetry;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mapbox.android.telemetry.Event;

@Keep
@SuppressLint({"ParcelCreator"})
/* loaded from: classes2.dex */
public class CrashEvent extends Event {

    @SerializedName("appId")
    private String appId;

    @SerializedName("appVersion")
    private String appVersion;

    @SerializedName("created")
    private final String created;

    @SerializedName("device")
    private String device;

    @SerializedName("event")
    private final String event;

    @SerializedName("isSilent")
    private String isSilent;

    @SerializedName("model")
    private String model;

    @SerializedName("osVersion")
    private String osVersion;

    @SerializedName("sdkIdentifier")
    private String sdkIdentifier;

    @SerializedName("sdkVersion")
    private String sdkVersion;

    @SerializedName("stackTrace")
    private String stackTrace;

    @SerializedName("stackTraceHash")
    private String stackTraceHash;

    @SerializedName("threadDetails")
    private String threadDetails;

    public CrashEvent(String str, String str2) {
        this.event = str;
        this.created = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getHash() {
        return this.stackTraceHash;
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.event) || TextUtils.isEmpty(this.created) || TextUtils.isEmpty(this.stackTraceHash)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.android.telemetry.Event
    public Event.a obtainType() {
        return Event.a.CRASH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
    }
}
