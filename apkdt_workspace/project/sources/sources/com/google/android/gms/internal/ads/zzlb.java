package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzlb extends zzlc {
    public static final Parcelable.Creator<zzlb> CREATOR = new wl1();

    /* renamed from: f, reason: collision with root package name */
    private final String f11209f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11210g;

    /* renamed from: h, reason: collision with root package name */
    public final String f11211h;

    public zzlb(String str, String str2, String str3) {
        super("COMM");
        this.f11209f = str;
        this.f11210g = str2;
        this.f11211h = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzlb.class == obj.getClass()) {
            zzlb zzlbVar = (zzlb) obj;
            if (cp1.a(this.f11210g, zzlbVar.f11210g) && cp1.a(this.f11209f, zzlbVar.f11209f) && cp1.a(this.f11211h, zzlbVar.f11211h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f11209f;
        int hashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.f11210g;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f11211h;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f11212e);
        parcel.writeString(this.f11209f);
        parcel.writeString(this.f11211h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlb(Parcel parcel) {
        super("COMM");
        this.f11209f = parcel.readString();
        this.f11210g = parcel.readString();
        this.f11211h = parcel.readString();
    }
}
