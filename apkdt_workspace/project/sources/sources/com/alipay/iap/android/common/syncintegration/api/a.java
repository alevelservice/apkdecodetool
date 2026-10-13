package com.alipay.iap.android.common.syncintegration.api;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: IAPSyncCommand.java */
/* loaded from: classes.dex */
final class a implements Parcelable.Creator<IAPSyncCommand> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public IAPSyncCommand createFromParcel(Parcel parcel) {
        return new IAPSyncCommand(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public IAPSyncCommand[] newArray(int i2) {
        return new IAPSyncCommand[i2];
    }
}
