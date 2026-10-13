package com.alipay.iap.android.common.syncintegration.api;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IAPSyncCommand implements Parcelable {
    public static final Parcelable.Creator<IAPSyncCommand> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    public String f3346e;

    /* renamed from: f, reason: collision with root package name */
    public String f3347f;

    /* renamed from: g, reason: collision with root package name */
    public String f3348g;

    /* renamed from: h, reason: collision with root package name */
    public String f3349h;

    /* renamed from: i, reason: collision with root package name */
    public String f3350i;

    public IAPSyncCommand() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f3346e);
        parcel.writeString(this.f3347f);
        parcel.writeString(this.f3348g);
        parcel.writeString(this.f3349h);
        parcel.writeString(this.f3350i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IAPSyncCommand(Parcel parcel) {
        this.f3346e = parcel.readString();
        this.f3347f = parcel.readString();
        this.f3348g = parcel.readString();
        this.f3349h = parcel.readString();
        this.f3350i = parcel.readString();
    }
}
