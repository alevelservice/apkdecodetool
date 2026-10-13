package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d7 implements Parcelable.Creator<zzanx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzanx createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        zzaoj zzaojVar = null;
        String str7 = null;
        String str8 = null;
        zzaqd zzaqdVar = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        zzanz zzanzVar = null;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        String str10 = null;
        zzarn zzarnVar = null;
        String str11 = null;
        Bundle bundle = null;
        ArrayList<String> arrayList7 = null;
        String str12 = null;
        String str13 = null;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int i5 = 0;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        boolean z19 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 6:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 7:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 9:
                    j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 10:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 11:
                    j4 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 12:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 13:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 14:
                    j5 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 15:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                case 41:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
                case 18:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 19:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 21:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 22:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 23:
                    z4 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 24:
                    z5 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 25:
                    z6 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 26:
                    z7 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 28:
                    zzaojVar = (zzaoj) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzaoj.CREATOR);
                    break;
                case 29:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 30:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 31:
                    z8 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 32:
                    z9 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 33:
                    zzaqdVar = (zzaqd) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzaqd.CREATOR);
                    break;
                case 34:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 35:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 36:
                    z10 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 37:
                    zzanzVar = (zzanz) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzanz.CREATOR);
                    break;
                case 38:
                    z11 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 39:
                    str9 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 40:
                    arrayList6 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 42:
                    z12 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 43:
                    str10 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 44:
                    zzarnVar = (zzarn) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzarn.CREATOR);
                    break;
                case 45:
                    str11 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 46:
                    z13 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 47:
                    z14 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 48:
                    bundle = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
                    break;
                case 49:
                    z15 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 50:
                    i5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 51:
                    z16 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 52:
                    arrayList7 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 53:
                    z17 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 54:
                    str12 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 55:
                    str13 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 56:
                    z18 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 57:
                    z19 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzanx(i2, str, str2, arrayList, i3, arrayList2, j2, z, j3, arrayList3, j4, i4, str3, j5, str4, z2, str5, str6, z3, z4, z5, z6, z7, zzaojVar, str7, str8, z8, z9, zzaqdVar, arrayList4, arrayList5, z10, zzanzVar, z11, str9, arrayList6, z12, str10, zzarnVar, str11, z13, z14, bundle, z15, i5, z16, arrayList7, z17, str12, str13, z18, z19);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzanx[] newArray(int i2) {
        return new zzanx[i2];
    }
}
