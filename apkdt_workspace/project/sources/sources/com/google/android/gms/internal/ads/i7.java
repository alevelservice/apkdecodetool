package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i7 implements Parcelable.Creator<zzaok> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaok createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Bundle bundle = null;
        zzawv zzawvVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        boolean z = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    bundle = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 2:
                    zzawvVar = (zzawv) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzawv.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 6:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzaok(bundle, zzawvVar, applicationInfo, str, arrayList, packageInfo, str2, z, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaok[] newArray(int i2) {
        return new zzaok[i2];
    }
}
