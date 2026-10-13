package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.internal.ads.zzawv;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class l implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzb zzbVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzawv zzawvVar = null;
        String str4 = null;
        zzi zziVar = null;
        IBinder iBinder6 = null;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    zzbVar = (zzb) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzb.CREATOR);
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
                    break;
                case 4:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
                    break;
                case 5:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
                    break;
                case 6:
                    iBinder4 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 9:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 10:
                    iBinder5 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
                    break;
                case 11:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 13:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 14:
                    zzawvVar = (zzawv) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzawv.CREATOR);
                    break;
                case 15:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
                case 16:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 17:
                    zziVar = (zzi) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzi.CREATOR);
                    break;
                case 18:
                    iBinder6 = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new AdOverlayInfoParcel(zzbVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i2, i3, str3, zzawvVar, str4, zziVar, iBinder6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i2) {
        return new AdOverlayInfoParcel[i2];
    }
}
