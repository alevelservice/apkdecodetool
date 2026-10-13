package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c7 implements Parcelable.Creator<zzanv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzanv createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        long j3 = 0;
        Bundle bundle = null;
        zztp zztpVar = null;
        zztw zztwVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzawv zzawvVar = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzaai zzaaiVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        zzwq zzwqVar = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzafj zzafjVar = null;
        String str17 = null;
        Bundle bundle6 = null;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        float f2 = 0.0f;
        float f3 = 0.0f;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i8 = 0;
        boolean z6 = false;
        boolean z7 = false;
        int i9 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    bundle = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 3:
                    zztpVar = (zztp) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zztp.CREATOR);
                    break;
                case 4:
                    zztwVar = (zztw) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zztw.CREATOR);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 10:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 11:
                    zzawvVar = (zzawv) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzawv.CREATOR);
                    break;
                case 12:
                    bundle2 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 13:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 14:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 15:
                    bundle3 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 16:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 62:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
                case 18:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 19:
                    i5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 20:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 21:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 25:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 26:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 27:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 28:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 29:
                    zzaaiVar = (zzaai) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzaai.CREATOR);
                    break;
                case 30:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 31:
                    j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 33:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 34:
                    f3 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 35:
                    i6 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 36:
                    i7 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 37:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 38:
                    z4 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 39:
                    str9 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 40:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 41:
                    str10 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 42:
                    z5 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 43:
                    i8 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 44:
                    bundle4 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 45:
                    str11 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 46:
                    zzwqVar = (zzwq) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzwq.CREATOR);
                    break;
                case 47:
                    z6 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 48:
                    bundle5 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 49:
                    str12 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 50:
                    str13 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 51:
                    str14 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 52:
                    z7 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 53:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.a.l(parcel, a2);
                    break;
                case 54:
                    str15 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 55:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 56:
                    i9 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 57:
                    z8 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 58:
                    z9 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 59:
                    z10 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 60:
                    arrayList6 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 61:
                    str16 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 63:
                    zzafjVar = (zzafj) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzafj.CREATOR);
                    break;
                case 64:
                    str17 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 65:
                    bundle6 = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzanv(i2, bundle, zztpVar, zztwVar, str, applicationInfo, packageInfo, str2, str3, str4, zzawvVar, bundle2, i3, arrayList, bundle3, z, i4, i5, f2, str5, j2, str6, arrayList2, str7, zzaaiVar, arrayList3, j3, str8, f3, z2, i6, i7, z3, z4, str9, str10, z5, i8, bundle4, str11, zzwqVar, z6, bundle5, str12, str13, str14, z7, arrayList4, str15, arrayList5, i9, z8, z9, z10, arrayList6, str16, zzafjVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzanv[] newArray(int i2) {
        return new zzanv[i2];
    }
}
