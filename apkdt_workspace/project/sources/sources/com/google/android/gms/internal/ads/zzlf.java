package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzlf extends zzlc {
    public static final Parcelable.Creator<zzlf> CREATOR = new xl1();

    /* renamed from: f, reason: collision with root package name */
    private final String f11213f;

    /* renamed from: g, reason: collision with root package name */
    private final String f11214g;

    public zzlf(String str, String str2, String str3) {
        super(str);
        this.f11213f = null;
        this.f11214g = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzlf.class == obj.getClass()) {
            zzlf zzlfVar = (zzlf) obj;
            if (this.f11212e.equals(zzlfVar.f11212e) && cp1.a(this.f11213f, zzlfVar.f11213f) && cp1.a(this.f11214g, zzlfVar.f11214g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f11212e.hashCode() + 527) * 31;
        String str = this.f11213f;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f11214g;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f11212e);
        parcel.writeString(this.f11213f);
        parcel.writeString(this.f11214g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlf(Parcel parcel) {
        super(parcel.readString());
        this.f11213f = parcel.readString();
        this.f11214g = parcel.readString();
    }
}
