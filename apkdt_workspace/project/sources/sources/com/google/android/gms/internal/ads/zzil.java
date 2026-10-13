package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzil implements Parcelable, Comparator<zza> {
    public static final Parcelable.Creator<zzil> CREATOR = new ij1();

    /* renamed from: e, reason: collision with root package name */
    private final zza[] f11196e;

    /* renamed from: f, reason: collision with root package name */
    private int f11197f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11198g;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class zza implements Parcelable {
        public static final Parcelable.Creator<zza> CREATOR = new kj1();

        /* renamed from: e, reason: collision with root package name */
        private int f11199e;

        /* renamed from: f, reason: collision with root package name */
        private final UUID f11200f;

        /* renamed from: g, reason: collision with root package name */
        private final String f11201g;

        /* renamed from: h, reason: collision with root package name */
        private final byte[] f11202h;

        /* renamed from: i, reason: collision with root package name */
        public final boolean f11203i;

        public zza(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, false);
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            zza zzaVar = (zza) obj;
            return this.f11201g.equals(zzaVar.f11201g) && cp1.a(this.f11200f, zzaVar.f11200f) && Arrays.equals(this.f11202h, zzaVar.f11202h);
        }

        public final int hashCode() {
            if (this.f11199e == 0) {
                this.f11199e = (((this.f11200f.hashCode() * 31) + this.f11201g.hashCode()) * 31) + Arrays.hashCode(this.f11202h);
            }
            return this.f11199e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.f11200f.getMostSignificantBits());
            parcel.writeLong(this.f11200f.getLeastSignificantBits());
            parcel.writeString(this.f11201g);
            parcel.writeByteArray(this.f11202h);
            parcel.writeByte(this.f11203i ? (byte) 1 : (byte) 0);
        }

        private zza(UUID uuid, String str, byte[] bArr, boolean z) {
            no1.a(uuid);
            this.f11200f = uuid;
            no1.a(str);
            this.f11201g = str;
            no1.a(bArr);
            this.f11202h = bArr;
            this.f11203i = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(Parcel parcel) {
            this.f11200f = new UUID(parcel.readLong(), parcel.readLong());
            this.f11201g = parcel.readString();
            this.f11202h = parcel.createByteArray();
            this.f11203i = parcel.readByte() != 0;
        }
    }

    public zzil(zza... zzaVarArr) {
        this(true, zzaVarArr);
    }

    public final zza a(int i2) {
        return this.f11196e[i2];
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zza zzaVar, zza zzaVar2) {
        zza zzaVar3 = zzaVar;
        zza zzaVar4 = zzaVar2;
        if (xg1.f10351b.equals(zzaVar3.f11200f)) {
            return xg1.f10351b.equals(zzaVar4.f11200f) ? 0 : 1;
        }
        return zzaVar3.f11200f.compareTo(zzaVar4.f11200f);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzil.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f11196e, ((zzil) obj).f11196e);
    }

    public final int hashCode() {
        if (this.f11197f == 0) {
            this.f11197f = Arrays.hashCode(this.f11196e);
        }
        return this.f11197f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeTypedArray(this.f11196e, 0);
    }

    private zzil(boolean z, zza... zzaVarArr) {
        zza[] zzaVarArr2 = (zza[]) zzaVarArr.clone();
        Arrays.sort(zzaVarArr2, this);
        for (int i2 = 1; i2 < zzaVarArr2.length; i2++) {
            if (zzaVarArr2[i2 - 1].f11200f.equals(zzaVarArr2[i2].f11200f)) {
                String valueOf = String.valueOf(zzaVarArr2[i2].f11200f);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                sb.append("Duplicate data for uuid: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        this.f11196e = zzaVarArr2;
        this.f11198g = zzaVarArr2.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzil(Parcel parcel) {
        this.f11196e = (zza[]) parcel.createTypedArray(zza.CREATOR);
        this.f11198g = this.f11196e.length;
    }
}
