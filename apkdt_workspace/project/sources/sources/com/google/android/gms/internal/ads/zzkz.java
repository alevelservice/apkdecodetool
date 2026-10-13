package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzkz extends zzlc {
    public static final Parcelable.Creator<zzkz> CREATOR = new ul1();

    /* renamed from: f, reason: collision with root package name */
    private final String f11205f;

    /* renamed from: g, reason: collision with root package name */
    private final String f11206g;

    /* renamed from: h, reason: collision with root package name */
    private final int f11207h;

    /* renamed from: i, reason: collision with root package name */
    private final byte[] f11208i;

    public zzkz(String str, String str2, int i2, byte[] bArr) {
        super("APIC");
        this.f11205f = str;
        this.f11206g = null;
        this.f11207h = 3;
        this.f11208i = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzkz.class == obj.getClass()) {
            zzkz zzkzVar = (zzkz) obj;
            if (this.f11207h == zzkzVar.f11207h && cp1.a(this.f11205f, zzkzVar.f11205f) && cp1.a(this.f11206g, zzkzVar.f11206g) && Arrays.equals(this.f11208i, zzkzVar.f11208i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (this.f11207h + 527) * 31;
        String str = this.f11205f;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f11206g;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.f11208i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f11205f);
        parcel.writeString(this.f11206g);
        parcel.writeInt(this.f11207h);
        parcel.writeByteArray(this.f11208i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkz(Parcel parcel) {
        super("APIC");
        this.f11205f = parcel.readString();
        this.f11206g = parcel.readString();
        this.f11207h = parcel.readInt();
        this.f11208i = parcel.createByteArray();
    }
}
