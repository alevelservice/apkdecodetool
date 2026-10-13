package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class h implements Parcelable.Creator<zzt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        byte[] bArr = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    hashSet.add(1);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    hashSet.add(2);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    hashSet.add(3);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() == b2) {
            return new zzt(hashSet, i2, str, i3, bArr, pendingIntent, deviceMetaData);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(b2);
        throw new a.C0088a(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt[] newArray(int i2) {
        return new zzt[i2];
    }
}
