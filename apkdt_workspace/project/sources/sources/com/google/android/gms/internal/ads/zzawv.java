package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "VersionInfoParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzawv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzawv> CREATOR = new wd();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public String f11000e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public int f11001f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public int f11002g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public boolean f11003h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private boolean f11004i;

    public zzawv(int i2, int i3, boolean z) {
        this(i2, i3, z, false, false);
    }

    public static zzawv j() {
        return new zzawv(12451009, 12451009, true);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11000e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11001f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f11002g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f11003h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11004i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zzawv(int i2, int i3, boolean z, boolean z2) {
        this(i2, i3, true, false, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzawv(int r8, int r9, boolean r10, boolean r11, boolean r12) {
        /*
            r7 = this;
            if (r10 == 0) goto L5
            java.lang.String r11 = "0"
            goto L7
        L5:
            java.lang.String r11 = "1"
        L7:
            int r12 = r11.length()
            int r12 = r12 + 36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r12)
            java.lang.String r12 = "afma-sdk-a-v"
            r0.append(r12)
            r0.append(r8)
            java.lang.String r12 = "."
            r0.append(r12)
            r0.append(r9)
            r0.append(r12)
            r0.append(r11)
            java.lang.String r2 = r0.toString()
            r6 = 0
            r1 = r7
            r3 = r8
            r4 = r9
            r5 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawv.<init>(int, int, boolean, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzawv(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2) {
        this.f11000e = str;
        this.f11001f = i2;
        this.f11002g = i3;
        this.f11003h = z;
        this.f11004i = z2;
    }
}
