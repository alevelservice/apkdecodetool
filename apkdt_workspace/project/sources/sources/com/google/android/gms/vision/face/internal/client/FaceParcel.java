package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "FaceParcelCreator")
/* loaded from: classes.dex */
public class FaceParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FaceParcel> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f13560e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final int f13561f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final float f13562g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final float f13563h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final float f13564i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final float f13565j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "3.4028235E38f", id = 7)
    public final float f13566k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "3.4028235E38f", id = 8)
    public final float f13567l;

    @SafeParcelable.Field(defaultValue = "3.4028235E38f", id = 14)
    public final float m;

    @SafeParcelable.Field(id = 9)
    public final LandmarkParcel[] n;

    @SafeParcelable.Field(id = 10)
    public final float o;

    @SafeParcelable.Field(id = 11)
    public final float p;

    @SafeParcelable.Field(id = 12)
    public final float q;

    @SafeParcelable.Field(id = 13)
    public final zza[] r;

    @SafeParcelable.Field(defaultValue = "-1.0f", id = 15)
    public final float s;

    @SafeParcelable.Constructor
    public FaceParcel(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) float f2, @SafeParcelable.Param(id = 4) float f3, @SafeParcelable.Param(id = 5) float f4, @SafeParcelable.Param(id = 6) float f5, @SafeParcelable.Param(id = 7) float f6, @SafeParcelable.Param(id = 8) float f7, @SafeParcelable.Param(id = 14) float f8, @SafeParcelable.Param(id = 9) LandmarkParcel[] landmarkParcelArr, @SafeParcelable.Param(id = 10) float f9, @SafeParcelable.Param(id = 11) float f10, @SafeParcelable.Param(id = 12) float f11, @SafeParcelable.Param(id = 13) zza[] zzaVarArr, @SafeParcelable.Param(id = 15) float f12) {
        this.f13560e = i2;
        this.f13561f = i3;
        this.f13562g = f2;
        this.f13563h = f3;
        this.f13564i = f4;
        this.f13565j = f5;
        this.f13566k = f6;
        this.f13567l = f7;
        this.m = f8;
        this.n = landmarkParcelArr;
        this.o = f9;
        this.p = f10;
        this.q = f11;
        this.r = zzaVarArr;
        this.s = f12;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f13560e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13561f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13562g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13563h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13564i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13565j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13566k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13567l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable[]) this.n, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.p);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.q);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, (Parcelable[]) this.r, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.s);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
