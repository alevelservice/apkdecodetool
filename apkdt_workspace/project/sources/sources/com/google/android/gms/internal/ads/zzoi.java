package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzoi implements Parcelable {
    public static final Parcelable.Creator<zzoi> CREATOR = new ep1();

    /* renamed from: e, reason: collision with root package name */
    public final int f11215e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11216f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11217g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f11218h;

    /* renamed from: i, reason: collision with root package name */
    private int f11219i;

    public zzoi(int i2, int i3, int i4, byte[] bArr) {
        this.f11215e = i2;
        this.f11216f = i3;
        this.f11217g = i4;
        this.f11218h = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzoi.class == obj.getClass()) {
            zzoi zzoiVar = (zzoi) obj;
            if (this.f11215e == zzoiVar.f11215e && this.f11216f == zzoiVar.f11216f && this.f11217g == zzoiVar.f11217g && Arrays.equals(this.f11218h, zzoiVar.f11218h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f11219i == 0) {
            this.f11219i = ((((((this.f11215e + 527) * 31) + this.f11216f) * 31) + this.f11217g) * 31) + Arrays.hashCode(this.f11218h);
        }
        return this.f11219i;
    }

    public final String toString() {
        int i2 = this.f11215e;
        int i3 = this.f11216f;
        int i4 = this.f11217g;
        boolean z = this.f11218h != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(i4);
        sb.append(", ");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f11215e);
        parcel.writeInt(this.f11216f);
        parcel.writeInt(this.f11217g);
        parcel.writeInt(this.f11218h != null ? 1 : 0);
        byte[] bArr = this.f11218h;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzoi(Parcel parcel) {
        this.f11215e = parcel.readInt();
        this.f11216f = parcel.readInt();
        this.f11217g = parcel.readInt();
        this.f11218h = parcel.readInt() != 0 ? parcel.createByteArray() : null;
    }
}
