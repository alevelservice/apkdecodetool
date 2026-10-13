package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class g implements Parcelable.Creator<ExperimentTokens> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        byte[] bArr = null;
        byte[][] bArr2 = null;
        byte[][] bArr3 = null;
        byte[][] bArr4 = null;
        byte[][] bArr5 = null;
        int[] iArr = null;
        byte[][] bArr6 = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                    break;
                case 4:
                    bArr2 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, a2);
                    break;
                case 5:
                    bArr3 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, a2);
                    break;
                case 6:
                    bArr4 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, a2);
                    break;
                case 7:
                    bArr5 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, a2);
                    break;
                case 8:
                    iArr = com.google.android.gms.common.internal.safeparcel.a.k(parcel, a2);
                    break;
                case 9:
                    bArr6 = com.google.android.gms.common.internal.safeparcel.a.h(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new ExperimentTokens(str, bArr, bArr2, bArr3, bArr4, bArr5, iArr, bArr6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens[] newArray(int i2) {
        return new ExperimentTokens[i2];
    }
}
