package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<zze> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzr zzrVar = null;
        byte[] bArr = null;
        int[] iArr = null;
        String[] strArr = null;
        int[] iArr2 = null;
        byte[][] bArr2 = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean z = true;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    zzrVar = (zzr) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzr.CREATOR);
                    break;
                case 3:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                    break;
                case 4:
                    iArr = com.google.android.gms.common.internal.safeparcel.a.k(parcel, a2);
                    break;
                case 5:
                    strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
                    break;
                case 6:
                    iArr2 = com.google.android.gms.common.internal.safeparcel.a.k(parcel, a2);
                    break;
                case 7:
                    bArr2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, a2);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 9:
                    experimentTokensArr = (ExperimentTokens[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, ExperimentTokens.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zze(zzrVar, bArr, iArr, strArr, iArr2, bArr2, z, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze[] newArray(int i2) {
        return new zze[i2];
    }
}
