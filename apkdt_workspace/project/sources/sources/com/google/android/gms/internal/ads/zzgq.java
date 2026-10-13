package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzgq implements Parcelable {
    public static final Parcelable.Creator<zzgq> CREATOR = new kh1();
    public final long A;
    public final int B;
    public final String C;
    private final int D;
    private int E;

    /* renamed from: e, reason: collision with root package name */
    private final String f11188e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11189f;

    /* renamed from: g, reason: collision with root package name */
    public final String f11190g;

    /* renamed from: h, reason: collision with root package name */
    private final zzkv f11191h;

    /* renamed from: i, reason: collision with root package name */
    private final String f11192i;

    /* renamed from: j, reason: collision with root package name */
    public final String f11193j;

    /* renamed from: k, reason: collision with root package name */
    public final int f11194k;

    /* renamed from: l, reason: collision with root package name */
    public final List<byte[]> f11195l;
    public final zzil m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;
    private final int s;
    private final byte[] t;
    private final zzoi u;
    public final int v;
    public final int w;
    public final int x;
    private final int y;
    private final int z;

    private zzgq(String str, String str2, String str3, String str4, int i2, int i3, int i4, int i5, float f2, int i6, float f3, byte[] bArr, int i7, zzoi zzoiVar, int i8, int i9, int i10, int i11, int i12, int i13, String str5, int i14, long j2, List<byte[]> list, zzil zzilVar, zzkv zzkvVar) {
        this.f11188e = str;
        this.f11192i = str2;
        this.f11193j = str3;
        this.f11190g = str4;
        this.f11189f = i2;
        this.f11194k = i3;
        this.n = i4;
        this.o = i5;
        this.p = f2;
        this.q = i6;
        this.r = f3;
        this.t = bArr;
        this.s = i7;
        this.u = zzoiVar;
        this.v = i8;
        this.w = i9;
        this.x = i10;
        this.y = i11;
        this.z = i12;
        this.B = i13;
        this.C = str5;
        this.D = i14;
        this.A = j2;
        this.f11195l = list == null ? Collections.emptyList() : list;
        this.m = zzilVar;
        this.f11191h = zzkvVar;
    }

    public static zzgq a(String str, String str2, String str3, int i2, int i3, int i4, int i5, float f2, List<byte[]> list, int i6, float f3, byte[] bArr, int i7, zzoi zzoiVar, zzil zzilVar) {
        return new zzgq(str, null, str2, null, -1, i3, i4, i5, -1.0f, i6, f3, bArr, i7, zzoiVar, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, list, zzilVar, null);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final MediaFormat b() {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", this.f11193j);
        String str = this.C;
        if (str != null) {
            mediaFormat.setString("language", str);
        }
        a(mediaFormat, "max-input-size", this.f11194k);
        a(mediaFormat, "width", this.n);
        a(mediaFormat, "height", this.o);
        float f2 = this.p;
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        a(mediaFormat, "rotation-degrees", this.q);
        a(mediaFormat, "channel-count", this.v);
        a(mediaFormat, "sample-rate", this.w);
        a(mediaFormat, "encoder-delay", this.y);
        a(mediaFormat, "encoder-padding", this.z);
        for (int i2 = 0; i2 < this.f11195l.size(); i2++) {
            StringBuilder sb = new StringBuilder(15);
            sb.append("csd-");
            sb.append(i2);
            mediaFormat.setByteBuffer(sb.toString(), ByteBuffer.wrap(this.f11195l.get(i2)));
        }
        zzoi zzoiVar = this.u;
        if (zzoiVar != null) {
            a(mediaFormat, "color-transfer", zzoiVar.f11217g);
            a(mediaFormat, "color-standard", zzoiVar.f11215e);
            a(mediaFormat, "color-range", zzoiVar.f11216f);
            byte[] bArr = zzoiVar.f11218h;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        return mediaFormat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzgq.class == obj.getClass()) {
            zzgq zzgqVar = (zzgq) obj;
            if (this.f11189f == zzgqVar.f11189f && this.f11194k == zzgqVar.f11194k && this.n == zzgqVar.n && this.o == zzgqVar.o && this.p == zzgqVar.p && this.q == zzgqVar.q && this.r == zzgqVar.r && this.s == zzgqVar.s && this.v == zzgqVar.v && this.w == zzgqVar.w && this.x == zzgqVar.x && this.y == zzgqVar.y && this.z == zzgqVar.z && this.A == zzgqVar.A && this.B == zzgqVar.B && cp1.a(this.f11188e, zzgqVar.f11188e) && cp1.a(this.C, zzgqVar.C) && this.D == zzgqVar.D && cp1.a(this.f11192i, zzgqVar.f11192i) && cp1.a(this.f11193j, zzgqVar.f11193j) && cp1.a(this.f11190g, zzgqVar.f11190g) && cp1.a(this.m, zzgqVar.m) && cp1.a(this.f11191h, zzgqVar.f11191h) && cp1.a(this.u, zzgqVar.u) && Arrays.equals(this.t, zzgqVar.t) && this.f11195l.size() == zzgqVar.f11195l.size()) {
                for (int i2 = 0; i2 < this.f11195l.size(); i2++) {
                    if (!Arrays.equals(this.f11195l.get(i2), zzgqVar.f11195l.get(i2))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.E == 0) {
            String str = this.f11188e;
            int hashCode = ((str == null ? 0 : str.hashCode()) + 527) * 31;
            String str2 = this.f11192i;
            int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f11193j;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f11190g;
            int hashCode4 = (((((((((((hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.f11189f) * 31) + this.n) * 31) + this.o) * 31) + this.v) * 31) + this.w) * 31;
            String str5 = this.C;
            int hashCode5 = (((hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.D) * 31;
            zzil zzilVar = this.m;
            int hashCode6 = (hashCode5 + (zzilVar == null ? 0 : zzilVar.hashCode())) * 31;
            zzkv zzkvVar = this.f11191h;
            this.E = hashCode6 + (zzkvVar != null ? zzkvVar.hashCode() : 0);
        }
        return this.E;
    }

    public final String toString() {
        String str = this.f11188e;
        String str2 = this.f11192i;
        String str3 = this.f11193j;
        int i2 = this.f11189f;
        String str4 = this.C;
        int i3 = this.n;
        int i4 = this.o;
        float f2 = this.p;
        int i5 = this.v;
        int i6 = this.w;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 100 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("Format(");
        sb.append(str);
        sb.append(", ");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(str4);
        sb.append(", [");
        sb.append(i3);
        sb.append(", ");
        sb.append(i4);
        sb.append(", ");
        sb.append(f2);
        sb.append("], [");
        sb.append(i5);
        sb.append(", ");
        sb.append(i6);
        sb.append("])");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f11188e);
        parcel.writeString(this.f11192i);
        parcel.writeString(this.f11193j);
        parcel.writeString(this.f11190g);
        parcel.writeInt(this.f11189f);
        parcel.writeInt(this.f11194k);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeFloat(this.p);
        parcel.writeInt(this.q);
        parcel.writeFloat(this.r);
        parcel.writeInt(this.t != null ? 1 : 0);
        byte[] bArr = this.t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.s);
        parcel.writeParcelable(this.u, i2);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z);
        parcel.writeInt(this.B);
        parcel.writeString(this.C);
        parcel.writeInt(this.D);
        parcel.writeLong(this.A);
        int size = this.f11195l.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeByteArray(this.f11195l.get(i3));
        }
        parcel.writeParcelable(this.m, 0);
        parcel.writeParcelable(this.f11191h, 0);
    }

    public static zzgq a(String str, String str2, String str3, int i2, int i3, int i4, int i5, List<byte[]> list, zzil zzilVar, int i6, String str4) {
        return a(str, str2, null, -1, -1, i4, i5, -1, null, zzilVar, 0, str4);
    }

    public static zzgq a(String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, List<byte[]> list, zzil zzilVar, int i7, String str4) {
        return new zzgq(str, null, str2, null, -1, i3, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i4, i5, i6, -1, -1, i7, str4, -1, Long.MAX_VALUE, list, zzilVar, null);
    }

    public static zzgq a(String str, String str2, String str3, int i2, int i3, String str4, zzil zzilVar) {
        return a(str, str2, null, -1, i3, str4, -1, zzilVar, Long.MAX_VALUE, Collections.emptyList());
    }

    public static zzgq a(String str, String str2, String str3, int i2, int i3, String str4, int i4, zzil zzilVar, long j2, List<byte[]> list) {
        return new zzgq(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, i3, str4, -1, j2, list, zzilVar, null);
    }

    public static zzgq a(String str, String str2, String str3, int i2, List<byte[]> list, String str4, zzil zzilVar) {
        return new zzgq(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, str4, -1, Long.MAX_VALUE, list, zzilVar, null);
    }

    public static zzgq a(String str, String str2, String str3, int i2, zzil zzilVar) {
        return new zzgq(str, null, str2, null, -1, -1, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, 0, null, -1, Long.MAX_VALUE, null, null, null);
    }

    public final zzgq a(int i2) {
        return new zzgq(this.f11188e, this.f11192i, this.f11193j, this.f11190g, this.f11189f, i2, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.B, this.C, this.D, this.A, this.f11195l, this.m, this.f11191h);
    }

    public final zzgq a(long j2) {
        return new zzgq(this.f11188e, this.f11192i, this.f11193j, this.f11190g, this.f11189f, this.f11194k, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.B, this.C, this.D, j2, this.f11195l, this.m, this.f11191h);
    }

    public final zzgq a(int i2, int i3) {
        return new zzgq(this.f11188e, this.f11192i, this.f11193j, this.f11190g, this.f11189f, this.f11194k, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, i2, i3, this.B, this.C, this.D, this.A, this.f11195l, this.m, this.f11191h);
    }

    public final zzgq a(zzkv zzkvVar) {
        return new zzgq(this.f11188e, this.f11192i, this.f11193j, this.f11190g, this.f11189f, this.f11194k, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.B, this.C, this.D, this.A, this.f11195l, this.m, zzkvVar);
    }

    public final int a() {
        int i2;
        int i3 = this.n;
        if (i3 == -1 || (i2 = this.o) == -1) {
            return -1;
        }
        return i3 * i2;
    }

    @TargetApi(16)
    private static void a(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgq(Parcel parcel) {
        this.f11188e = parcel.readString();
        this.f11192i = parcel.readString();
        this.f11193j = parcel.readString();
        this.f11190g = parcel.readString();
        this.f11189f = parcel.readInt();
        this.f11194k = parcel.readInt();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        this.p = parcel.readFloat();
        this.q = parcel.readInt();
        this.r = parcel.readFloat();
        this.t = parcel.readInt() != 0 ? parcel.createByteArray() : null;
        this.s = parcel.readInt();
        this.u = (zzoi) parcel.readParcelable(zzoi.class.getClassLoader());
        this.v = parcel.readInt();
        this.w = parcel.readInt();
        this.x = parcel.readInt();
        this.y = parcel.readInt();
        this.z = parcel.readInt();
        this.B = parcel.readInt();
        this.C = parcel.readString();
        this.D = parcel.readInt();
        this.A = parcel.readLong();
        int readInt = parcel.readInt();
        this.f11195l = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f11195l.add(parcel.createByteArray());
        }
        this.m = (zzil) parcel.readParcelable(zzil.class.getClassLoader());
        this.f11191h = (zzkv) parcel.readParcelable(zzkv.class.getClassLoader());
    }
}
