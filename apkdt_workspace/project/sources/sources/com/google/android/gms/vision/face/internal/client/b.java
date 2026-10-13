package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class b implements Parcelable.Creator<FaceParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        LandmarkParcel[] landmarkParcelArr = null;
        zza[] zzaVarArr = null;
        int i2 = 0;
        int i3 = 0;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = Float.MAX_VALUE;
        float f7 = Float.MAX_VALUE;
        float f8 = Float.MAX_VALUE;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = -1.0f;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 3:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 4:
                    f3 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 5:
                    f4 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 6:
                    f5 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 7:
                    f6 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 8:
                    f7 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 9:
                    landmarkParcelArr = (LandmarkParcel[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, LandmarkParcel.CREATOR);
                    break;
                case 10:
                    f9 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 11:
                    f10 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 12:
                    f11 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 13:
                    zzaVarArr = (zza[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, zza.CREATOR);
                    break;
                case 14:
                    f8 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 15:
                    f12 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new FaceParcel(i2, i3, f2, f3, f4, f5, f6, f7, f8, landmarkParcelArr, f9, f10, f11, zzaVarArr, f12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FaceParcel[] newArray(int i2) {
        return new FaceParcel[i2];
    }
}
