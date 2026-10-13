package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AdRequestInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzanv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzanv> CREATOR = new c7();

    @Nullable
    @SafeParcelable.Field(id = 27)
    private final List<String> A;

    @SafeParcelable.Field(id = 28)
    private final String B;

    @SafeParcelable.Field(id = 29)
    private final zzaai C;

    @SafeParcelable.Field(id = 30)
    private final List<String> D;

    @SafeParcelable.Field(id = 31)
    private final long E;

    @SafeParcelable.Field(id = 33)
    private final String F;

    @SafeParcelable.Field(id = 34)
    private final float G;

    @SafeParcelable.Field(id = 35)
    private final int H;

    @SafeParcelable.Field(id = 36)
    private final int I;

    @SafeParcelable.Field(id = 37)
    private final boolean J;

    @SafeParcelable.Field(id = 38)
    private final boolean K;

    @SafeParcelable.Field(id = 39)
    private final String L;

    @SafeParcelable.Field(id = 40)
    private final boolean M;

    @SafeParcelable.Field(id = 41)
    private final String N;

    @SafeParcelable.Field(id = 42)
    private final boolean O;

    @SafeParcelable.Field(id = 43)
    private final int P;

    @SafeParcelable.Field(id = 44)
    private final Bundle Q;

    @SafeParcelable.Field(id = 45)
    private final String R;

    @Nullable
    @SafeParcelable.Field(id = 46)
    private final zzwq S;

    @SafeParcelable.Field(id = 47)
    private final boolean T;

    @SafeParcelable.Field(id = 48)
    private final Bundle U;

    @Nullable
    @SafeParcelable.Field(id = 49)
    private final String V;

    @Nullable
    @SafeParcelable.Field(id = 50)
    private final String W;

    @Nullable
    @SafeParcelable.Field(id = 51)
    private final String X;

    @SafeParcelable.Field(id = 52)
    private final boolean Y;

    @SafeParcelable.Field(id = 53)
    private final List<Integer> Z;

    @SafeParcelable.Field(id = 54)
    private final String a0;

    @SafeParcelable.Field(id = 55)
    private final List<String> b0;

    @SafeParcelable.Field(id = 56)
    private final int c0;

    @SafeParcelable.Field(id = 57)
    private final boolean d0;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private final int f10944e;

    @SafeParcelable.Field(id = 58)
    private final boolean e0;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(id = 2)
    private final Bundle f10945f;

    @SafeParcelable.Field(id = 59)
    private final boolean f0;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final zztp f10946g;

    @SafeParcelable.Field(id = 60)
    private final ArrayList<String> g0;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final zztw f10947h;

    @SafeParcelable.Field(id = 61)
    private final String h0;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final String f10948i;

    @SafeParcelable.Field(id = 63)
    private final zzafj i0;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final ApplicationInfo f10949j;

    @Nullable
    @SafeParcelable.Field(id = 64)
    private final String j0;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(id = 7)
    private final PackageInfo f10950k;

    @SafeParcelable.Field(id = 65)
    private final Bundle k0;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    private final String f10951l;

    @SafeParcelable.Field(id = 9)
    private final String m;

    @SafeParcelable.Field(id = 10)
    private final String n;

    @SafeParcelable.Field(id = 11)
    private final zzawv o;

    @SafeParcelable.Field(id = 12)
    private final Bundle p;

    @SafeParcelable.Field(id = 13)
    private final int q;

    @SafeParcelable.Field(id = 14)
    private final List<String> r;

    @SafeParcelable.Field(id = 15)
    private final Bundle s;

    @SafeParcelable.Field(id = 16)
    private final boolean t;

    @SafeParcelable.Field(id = 18)
    private final int u;

    @SafeParcelable.Field(id = 19)
    private final int v;

    @SafeParcelable.Field(id = 20)
    private final float w;

    @SafeParcelable.Field(id = 21)
    private final String x;

    @SafeParcelable.Field(id = 25)
    private final long y;

    @SafeParcelable.Field(id = 26)
    private final String z;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzanv(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) Bundle bundle, @SafeParcelable.Param(id = 3) zztp zztpVar, @SafeParcelable.Param(id = 4) zztw zztwVar, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 7) PackageInfo packageInfo, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) String str3, @SafeParcelable.Param(id = 10) String str4, @SafeParcelable.Param(id = 11) zzawv zzawvVar, @SafeParcelable.Param(id = 12) Bundle bundle2, @SafeParcelable.Param(id = 13) int i3, @SafeParcelable.Param(id = 14) List<String> list, @SafeParcelable.Param(id = 15) Bundle bundle3, @SafeParcelable.Param(id = 16) boolean z, @SafeParcelable.Param(id = 18) int i4, @SafeParcelable.Param(id = 19) int i5, @SafeParcelable.Param(id = 20) float f2, @SafeParcelable.Param(id = 21) String str5, @SafeParcelable.Param(id = 25) long j2, @SafeParcelable.Param(id = 26) String str6, @SafeParcelable.Param(id = 27) List<String> list2, @SafeParcelable.Param(id = 28) String str7, @SafeParcelable.Param(id = 29) zzaai zzaaiVar, @SafeParcelable.Param(id = 30) List<String> list3, @SafeParcelable.Param(id = 31) long j3, @SafeParcelable.Param(id = 33) String str8, @SafeParcelable.Param(id = 34) float f3, @SafeParcelable.Param(id = 40) boolean z2, @SafeParcelable.Param(id = 35) int i6, @SafeParcelable.Param(id = 36) int i7, @SafeParcelable.Param(id = 37) boolean z3, @SafeParcelable.Param(id = 38) boolean z4, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 41) String str10, @SafeParcelable.Param(id = 42) boolean z5, @SafeParcelable.Param(id = 43) int i8, @SafeParcelable.Param(id = 44) Bundle bundle4, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) zzwq zzwqVar, @SafeParcelable.Param(id = 47) boolean z6, @SafeParcelable.Param(id = 48) Bundle bundle5, @Nullable @SafeParcelable.Param(id = 49) String str12, @Nullable @SafeParcelable.Param(id = 50) String str13, @Nullable @SafeParcelable.Param(id = 51) String str14, @SafeParcelable.Param(id = 52) boolean z7, @SafeParcelable.Param(id = 53) List<Integer> list4, @SafeParcelable.Param(id = 54) String str15, @SafeParcelable.Param(id = 55) List<String> list5, @SafeParcelable.Param(id = 56) int i9, @SafeParcelable.Param(id = 57) boolean z8, @SafeParcelable.Param(id = 58) boolean z9, @SafeParcelable.Param(id = 59) boolean z10, @SafeParcelable.Param(id = 60) ArrayList<String> arrayList, @SafeParcelable.Param(id = 61) String str16, @SafeParcelable.Param(id = 63) zzafj zzafjVar, @Nullable @SafeParcelable.Param(id = 64) String str17, @SafeParcelable.Param(id = 65) Bundle bundle6) {
        List<String> unmodifiableList;
        List<String> unmodifiableList2;
        this.f10944e = i2;
        this.f10945f = bundle;
        this.f10946g = zztpVar;
        this.f10947h = zztwVar;
        this.f10948i = str;
        this.f10949j = applicationInfo;
        this.f10950k = packageInfo;
        this.f10951l = str2;
        this.m = str3;
        this.n = str4;
        this.o = zzawvVar;
        this.p = bundle2;
        this.q = i3;
        this.r = list;
        if (list3 == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list3);
        }
        this.D = unmodifiableList;
        this.s = bundle3;
        this.t = z;
        this.u = i4;
        this.v = i5;
        this.w = f2;
        this.x = str5;
        this.y = j2;
        this.z = str6;
        if (list2 == null) {
            unmodifiableList2 = Collections.emptyList();
        } else {
            unmodifiableList2 = Collections.unmodifiableList(list2);
        }
        this.A = unmodifiableList2;
        this.B = str7;
        this.C = zzaaiVar;
        this.E = j3;
        this.F = str8;
        this.G = f3;
        this.M = z2;
        this.H = i6;
        this.I = i7;
        this.J = z3;
        this.K = z4;
        this.L = str9;
        this.N = str10;
        this.O = z5;
        this.P = i8;
        this.Q = bundle4;
        this.R = str11;
        this.S = zzwqVar;
        this.T = z6;
        this.U = bundle5;
        this.V = str12;
        this.W = str13;
        this.X = str14;
        this.Y = z7;
        this.Z = list4;
        this.a0 = str15;
        this.b0 = list5;
        this.c0 = i9;
        this.d0 = z8;
        this.e0 = z9;
        this.f0 = z10;
        this.g0 = arrayList;
        this.h0 = str16;
        this.i0 = zzafjVar;
        this.j0 = str17;
        this.k0 = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10944e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10945f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f10946g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f10947h, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f10948i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f10949j, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, (Parcelable) this.f10950k, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f10951l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.m, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable) this.o, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.p, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.q);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 14, this.r, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.s, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.t);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.u);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 19, this.v);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20, this.w);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 21, this.x, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 25, this.y);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 26, this.z, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 27, this.A, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 28, this.B, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 29, (Parcelable) this.C, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 30, this.D, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 31, this.E);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 33, this.F, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 34, this.G);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 35, this.H);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 36, this.I);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 37, this.J);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 38, this.K);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 39, this.L, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 40, this.M);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 41, this.N, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 42, this.O);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 43, this.P);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 44, this.Q, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 45, this.R, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 46, (Parcelable) this.S, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 47, this.T);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 48, this.U, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 49, this.V, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 50, this.W, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 51, this.X, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 52, this.Y);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 53, this.Z, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 54, this.a0, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 55, this.b0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 56, this.c0);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 57, this.d0);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 58, this.e0);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 59, this.f0);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 60, this.g0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 61, this.h0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 63, (Parcelable) this.i0, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 64, this.j0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 65, this.k0, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
