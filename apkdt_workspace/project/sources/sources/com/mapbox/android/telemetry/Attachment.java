package com.mapbox.android.telemetry;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.mapbox.android.telemetry.Event;
import java.util.ArrayList;
import java.util.List;

@Keep
/* loaded from: classes2.dex */
public class Attachment extends Event implements Parcelable {
    public static final Parcelable.Creator<Attachment> CREATOR = new a();
    private static final String VIS_ATTACHMENT = "vis.attachment";

    @SerializedName("files")
    private List<s> attachments;

    @SerializedName("event")
    private final String event;

    /* loaded from: classes2.dex */
    static class a implements Parcelable.Creator<Attachment> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Attachment createFromParcel(Parcel parcel) {
            return new Attachment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Attachment[] newArray(int i2) {
            return new Attachment[i2];
        }
    }

    Attachment() {
        this.event = VIS_ATTACHMENT;
        this.attachments = new ArrayList();
    }

    public void addAttachment(s sVar) {
        this.attachments.add(sVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<s> getAttachments() {
        return this.attachments;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.mapbox.android.telemetry.Event
    public Event.a obtainType() {
        return Event.a.VIS_ATTACHMENT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.event);
    }

    protected Attachment(Parcel parcel) {
        this.event = parcel.readString();
    }
}
