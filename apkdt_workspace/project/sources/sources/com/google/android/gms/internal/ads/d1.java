package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d1 implements Parcelable.Creator<zzael> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzael createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        long j2 = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                    break;
                case 5:
                    strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
                    break;
                case 6:
                    strArr2 = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
                    break;
                case 7:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 8:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzael(z, str, i2, bArr, strArr, strArr2, z2, j2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzael[] newArray(int i2) {
        return new zzael[i2];
    }
}
