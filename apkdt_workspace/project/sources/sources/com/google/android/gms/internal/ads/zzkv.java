package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzkv implements Parcelable {
    public static final Parcelable.Creator<zzkv> CREATOR = new tl1();

    /* renamed from: e, reason: collision with root package name */
    private final zza[] f11204e;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public interface zza extends Parcelable {
    }

    public zzkv(List<? extends zza> list) {
        this.f11204e = new zza[list.size()];
        list.toArray(this.f11204e);
    }

    public final int a() {
        return this.f11204e.length;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzkv.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f11204e, ((zzkv) obj).f11204e);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f11204e);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f11204e.length);
        for (zza zzaVar : this.f11204e) {
            parcel.writeParcelable(zzaVar, 0);
        }
    }

    public final zza a(int i2) {
        return this.f11204e[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkv(Parcel parcel) {
        this.f11204e = new zza[parcel.readInt()];
        int i2 = 0;
        while (true) {
            zza[] zzaVarArr = this.f11204e;
            if (i2 >= zzaVarArr.length) {
                return;
            }
            zzaVarArr[i2] = (zza) parcel.readParcelable(zza.class.getClassLoader());
            i2++;
        }
    }
}
