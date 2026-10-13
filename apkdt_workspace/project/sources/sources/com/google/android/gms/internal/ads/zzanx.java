package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AdResponseParcelCreator")
/* loaded from: classes.dex */
public final class zzanx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzanx> CREATOR = new d7();

    @SafeParcelable.Field(id = 26)
    private final boolean A;

    @SafeParcelable.Field(id = 28)
    private zzaoj B;

    @SafeParcelable.Field(id = 29)
    private String C;

    @SafeParcelable.Field(id = 30)
    private final String D;

    @SafeParcelable.Field(id = 31)
    private final boolean E;

    @SafeParcelable.Field(id = 32)
    private final boolean F;

    @Nullable
    @SafeParcelable.Field(id = 33)
    private final zzaqd G;

    @Nullable
    @SafeParcelable.Field(id = 34)
    private final List<String> H;

    @Nullable
    @SafeParcelable.Field(id = 35)
    private final List<String> I;

    @SafeParcelable.Field(id = 36)
    private final boolean J;

    @Nullable
    @SafeParcelable.Field(id = 37)
    private final zzanz K;

    @SafeParcelable.Field(id = 38)
    private final boolean L;

    @Nullable
    @SafeParcelable.Field(id = 39)
    private String M;

    @SafeParcelable.Field(id = 40)
    private final List<String> N;

    @SafeParcelable.Field(id = 42)
    private final boolean O;

    @Nullable
    @SafeParcelable.Field(id = 43)
    private final String P;

    @Nullable
    @SafeParcelable.Field(id = 44)
    private final zzarn Q;

    @Nullable
    @SafeParcelable.Field(id = 45)
    private final String R;

    @SafeParcelable.Field(id = 46)
    private final boolean S;

    @SafeParcelable.Field(id = 47)
    private final boolean T;

    @SafeParcelable.Field(id = 48)
    private Bundle U;

    @SafeParcelable.Field(id = 49)
    private final boolean V;

    @SafeParcelable.Field(id = 50)
    private final int W;

    @SafeParcelable.Field(id = 51)
    private final boolean X;

    @SafeParcelable.Field(id = 52)
    private final List<String> Y;

    @SafeParcelable.Field(id = 53)
    private final boolean Z;

    @Nullable
    @SafeParcelable.Field(id = 54)
    private final String a0;

    @Nullable
    @SafeParcelable.Field(id = 55)
    private String b0;

    @SafeParcelable.Field(id = 56)
    private boolean c0;

    @SafeParcelable.Field(id = 57)
    private boolean d0;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private final int f10952e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f10953f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private String f10954g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final List<String> f10955h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final int f10956i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final List<String> f10957j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    private final long f10958k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    private final boolean f10959l;

    @SafeParcelable.Field(id = 9)
    private final long m;

    @SafeParcelable.Field(id = 10)
    private final List<String> n;

    @SafeParcelable.Field(id = 11)
    private final long o;

    @SafeParcelable.Field(id = 12)
    private final int p;

    @SafeParcelable.Field(id = 13)
    private final String q;

    @SafeParcelable.Field(id = 14)
    private final long r;

    @SafeParcelable.Field(id = 15)
    private final String s;

    @SafeParcelable.Field(id = 18)
    private final boolean t;

    @SafeParcelable.Field(id = 19)
    private final String u;

    @SafeParcelable.Field(id = 21)
    private final String v;

    @SafeParcelable.Field(id = 22)
    private final boolean w;

    @SafeParcelable.Field(id = 23)
    private final boolean x;

    @SafeParcelable.Field(id = 24)
    private final boolean y;

    @SafeParcelable.Field(id = 25)
    private final boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzanx(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) List<String> list, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) List<String> list2, @SafeParcelable.Param(id = 7) long j2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) long j3, @SafeParcelable.Param(id = 10) List<String> list3, @SafeParcelable.Param(id = 11) long j4, @SafeParcelable.Param(id = 12) int i4, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) long j5, @SafeParcelable.Param(id = 15) String str4, @SafeParcelable.Param(id = 18) boolean z2, @SafeParcelable.Param(id = 19) String str5, @SafeParcelable.Param(id = 21) String str6, @SafeParcelable.Param(id = 22) boolean z3, @SafeParcelable.Param(id = 23) boolean z4, @SafeParcelable.Param(id = 24) boolean z5, @SafeParcelable.Param(id = 25) boolean z6, @SafeParcelable.Param(id = 26) boolean z7, @SafeParcelable.Param(id = 28) zzaoj zzaojVar, @SafeParcelable.Param(id = 29) String str7, @SafeParcelable.Param(id = 30) String str8, @SafeParcelable.Param(id = 31) boolean z8, @SafeParcelable.Param(id = 32) boolean z9, @SafeParcelable.Param(id = 33) zzaqd zzaqdVar, @SafeParcelable.Param(id = 34) List<String> list4, @SafeParcelable.Param(id = 35) List<String> list5, @SafeParcelable.Param(id = 36) boolean z10, @SafeParcelable.Param(id = 37) zzanz zzanzVar, @SafeParcelable.Param(id = 38) boolean z11, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 40) List<String> list6, @SafeParcelable.Param(id = 42) boolean z12, @SafeParcelable.Param(id = 43) String str10, @SafeParcelable.Param(id = 44) zzarn zzarnVar, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) boolean z13, @SafeParcelable.Param(id = 47) boolean z14, @SafeParcelable.Param(id = 48) Bundle bundle, @SafeParcelable.Param(id = 49) boolean z15, @SafeParcelable.Param(id = 50) int i5, @SafeParcelable.Param(id = 51) boolean z16, @SafeParcelable.Param(id = 52) List<String> list7, @SafeParcelable.Param(id = 53) boolean z17, @SafeParcelable.Param(id = 54) String str12, @Nullable @SafeParcelable.Param(id = 55) String str13, @SafeParcelable.Param(id = 56) boolean z18, @SafeParcelable.Param(id = 57) boolean z19) {
        zzaoj zzaojVar2;
        zzaom zzaomVar;
        this.f10952e = i2;
        this.f10953f = str;
        this.f10954g = str2;
        this.f10955h = list != null ? Collections.unmodifiableList(list) : null;
        this.f10956i = i3;
        this.f10957j = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.f10958k = j2;
        this.f10959l = z;
        this.m = j3;
        this.n = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.o = j4;
        this.p = i4;
        this.q = str3;
        this.r = j5;
        this.s = str4;
        this.t = z2;
        this.u = str5;
        this.v = str6;
        this.w = z3;
        this.x = z4;
        this.y = z5;
        this.z = z6;
        this.S = z13;
        this.A = z7;
        this.B = zzaojVar;
        this.C = str7;
        this.D = str8;
        if (this.f10954g == null && (zzaojVar2 = this.B) != null && (zzaomVar = (zzaom) zzaojVar2.a(zzaom.CREATOR)) != null && !TextUtils.isEmpty(zzaomVar.f10973e)) {
            this.f10954g = zzaomVar.f10973e;
        }
        this.E = z8;
        this.F = z9;
        this.G = zzaqdVar;
        this.H = list4;
        this.I = list5;
        this.J = z10;
        this.K = zzanzVar;
        this.L = z11;
        this.M = str9;
        this.N = list6;
        this.O = z12;
        this.P = str10;
        this.Q = zzarnVar;
        this.R = str11;
        this.T = z14;
        this.U = bundle;
        this.V = z15;
        this.W = i5;
        this.X = z16;
        this.Y = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.Z = z17;
        this.a0 = str12;
        this.b0 = str13;
        this.c0 = z18;
        this.d0 = z19;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10952e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10953f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10954g, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, this.f10955h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f10956i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, this.f10957j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f10958k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f10959l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.m);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 10, this.n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.p);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.q, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.r);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.s, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.t);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 19, this.u, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 21, this.v, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 22, this.w);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 23, this.x);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 24, this.y);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 25, this.z);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 26, this.A);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 28, (Parcelable) this.B, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 29, this.C, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 30, this.D, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 31, this.E);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 32, this.F);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 33, (Parcelable) this.G, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 34, this.H, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 35, this.I, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 36, this.J);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 37, (Parcelable) this.K, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 38, this.L);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 39, this.M, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 40, this.N, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 42, this.O);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 43, this.P, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 44, (Parcelable) this.Q, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 45, this.R, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 46, this.S);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 47, this.T);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 48, this.U, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 49, this.V);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 50, this.W);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 51, this.X);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 52, this.Y, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 53, this.Z);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 54, this.a0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 55, this.b0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 56, this.c0);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 57, this.d0);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
