package com.mapbox.mapboxsdk.module.telemetry;

import android.annotation.SuppressLint;
import android.os.Parcel;
import com.mapbox.android.telemetry.Event;

@SuppressLint({"ParcelCreator"})
/* loaded from: classes2.dex */
abstract class MapBaseEvent extends Event {
    private final String created;
    private final String event = getEventName();

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapBaseEvent(PhoneState phoneState) {
        this.created = phoneState.getCreated();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    String getCreated() {
        return this.created;
    }

    String getEvent() {
        return this.event;
    }

    abstract String getEventName();

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
    }
}
