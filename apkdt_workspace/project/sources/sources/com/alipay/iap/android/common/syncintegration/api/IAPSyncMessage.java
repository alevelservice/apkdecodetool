package com.alipay.iap.android.common.syncintegration.api;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IAPSyncMessage implements Parcelable {
    public static final Parcelable.Creator<IAPSyncMessage> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    public String f3351e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3352f;

    /* renamed from: g, reason: collision with root package name */
    public String f3353g;

    /* renamed from: h, reason: collision with root package name */
    public String f3354h;

    /* renamed from: i, reason: collision with root package name */
    public String f3355i;

    public IAPSyncMessage() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f3351e);
        parcel.writeByte(this.f3352f ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f3353g);
        parcel.writeString(this.f3354h);
        parcel.writeString(this.f3355i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IAPSyncMessage(Parcel parcel) {
        this.f3351e = parcel.readString();
        this.f3352f = parcel.readByte() != 0;
        this.f3353g = parcel.readString();
        this.f3354h = parcel.readString();
        this.f3355i = parcel.readString();
    }
}
