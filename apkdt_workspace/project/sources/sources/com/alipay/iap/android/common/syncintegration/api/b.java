package com.alipay.iap.android.common.syncintegration.api;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: IAPSyncMessage.java */
/* loaded from: classes.dex */
final class b implements Parcelable.Creator<IAPSyncMessage> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public IAPSyncMessage createFromParcel(Parcel parcel) {
        return new IAPSyncMessage(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public IAPSyncMessage[] newArray(int i2) {
        return new IAPSyncMessage[i2];
    }
}
