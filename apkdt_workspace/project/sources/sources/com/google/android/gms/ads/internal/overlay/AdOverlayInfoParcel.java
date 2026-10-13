package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.fi;
import com.google.android.gms.internal.ads.st1;
import com.google.android.gms.internal.ads.x;
import com.google.android.gms.internal.ads.z;
import com.google.android.gms.internal.ads.zzawv;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "AdOverlayInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new l();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final zzb f4550e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAdClickListenerAsBinder", id = 3, type = "android.os.IBinder")
    public final st1 f4551f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAdOverlayListenerAsBinder", id = 4, type = "android.os.IBinder")
    public final m f4552g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAdWebViewAsBinder", id = 5, type = "android.os.IBinder")
    public final fi f4553h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAppEventGmsgListenerAsBinder", id = 6, type = "android.os.IBinder")
    public final z f4554i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final String f4555j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final boolean f4556k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public final String f4557l;

    @SafeParcelable.Field(getter = "getLeaveApplicationListenerAsBinder", id = 10, type = "android.os.IBinder")
    public final p m;

    @SafeParcelable.Field(id = 11)
    public final int n;

    @SafeParcelable.Field(id = 12)
    public final int o;

    @SafeParcelable.Field(id = 13)
    public final String p;

    @SafeParcelable.Field(id = 14)
    public final zzawv q;

    @SafeParcelable.Field(id = 16)
    public final String r;

    @SafeParcelable.Field(id = 17)
    public final zzi s;

    @SafeParcelable.Field(getter = "getAdMetadataGmsgListenerAsBinder", id = 18, type = "android.os.IBinder")
    public final x t;

    public AdOverlayInfoParcel(st1 st1Var, m mVar, p pVar, fi fiVar, int i2, zzawv zzawvVar, String str, zzi zziVar, String str2, String str3) {
        this.f4550e = null;
        this.f4551f = null;
        this.f4552g = mVar;
        this.f4553h = fiVar;
        this.t = null;
        this.f4554i = null;
        this.f4555j = str2;
        this.f4556k = false;
        this.f4557l = str3;
        this.m = null;
        this.n = i2;
        this.o = 1;
        this.p = null;
        this.q = zzawvVar;
        this.r = str;
        this.s = zziVar;
    }

    public static void a(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f4550e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, ObjectWrapper.wrap(this.f4551f).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, ObjectWrapper.wrap(this.f4552g).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, ObjectWrapper.wrap(this.f4553h).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, ObjectWrapper.wrap(this.f4554i).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f4555j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4556k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f4557l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, ObjectWrapper.wrap(this.m).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.p, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, (Parcelable) this.q, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.r, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, (Parcelable) this.s, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, ObjectWrapper.wrap(this.t).asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public static AdOverlayInfoParcel a(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception unused) {
            return null;
        }
    }

    public AdOverlayInfoParcel(st1 st1Var, m mVar, p pVar, fi fiVar, boolean z, int i2, zzawv zzawvVar) {
        this.f4550e = null;
        this.f4551f = st1Var;
        this.f4552g = mVar;
        this.f4553h = fiVar;
        this.t = null;
        this.f4554i = null;
        this.f4555j = null;
        this.f4556k = z;
        this.f4557l = null;
        this.m = pVar;
        this.n = i2;
        this.o = 2;
        this.p = null;
        this.q = zzawvVar;
        this.r = null;
        this.s = null;
    }

    public AdOverlayInfoParcel(st1 st1Var, m mVar, x xVar, z zVar, p pVar, fi fiVar, boolean z, int i2, String str, zzawv zzawvVar) {
        this.f4550e = null;
        this.f4551f = st1Var;
        this.f4552g = mVar;
        this.f4553h = fiVar;
        this.t = xVar;
        this.f4554i = zVar;
        this.f4555j = null;
        this.f4556k = z;
        this.f4557l = null;
        this.m = pVar;
        this.n = i2;
        this.o = 3;
        this.p = str;
        this.q = zzawvVar;
        this.r = null;
        this.s = null;
    }

    public AdOverlayInfoParcel(st1 st1Var, m mVar, x xVar, z zVar, p pVar, fi fiVar, boolean z, int i2, String str, String str2, zzawv zzawvVar) {
        this.f4550e = null;
        this.f4551f = st1Var;
        this.f4552g = mVar;
        this.f4553h = fiVar;
        this.t = xVar;
        this.f4554i = zVar;
        this.f4555j = str2;
        this.f4556k = z;
        this.f4557l = str;
        this.m = pVar;
        this.n = i2;
        this.o = 3;
        this.p = null;
        this.q = zzawvVar;
        this.r = null;
        this.s = null;
    }

    public AdOverlayInfoParcel(zzb zzbVar, st1 st1Var, m mVar, p pVar, zzawv zzawvVar) {
        this.f4550e = zzbVar;
        this.f4551f = st1Var;
        this.f4552g = mVar;
        this.f4553h = null;
        this.t = null;
        this.f4554i = null;
        this.f4555j = null;
        this.f4556k = false;
        this.f4557l = null;
        this.m = pVar;
        this.n = -1;
        this.o = 4;
        this.p = null;
        this.q = zzawvVar;
        this.r = null;
        this.s = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AdOverlayInfoParcel(@SafeParcelable.Param(id = 2) zzb zzbVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2, @SafeParcelable.Param(id = 5) IBinder iBinder3, @SafeParcelable.Param(id = 6) IBinder iBinder4, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str2, @SafeParcelable.Param(id = 10) IBinder iBinder5, @SafeParcelable.Param(id = 11) int i2, @SafeParcelable.Param(id = 12) int i3, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) zzawv zzawvVar, @SafeParcelable.Param(id = 16) String str4, @SafeParcelable.Param(id = 17) zzi zziVar, @SafeParcelable.Param(id = 18) IBinder iBinder6) {
        this.f4550e = zzbVar;
        this.f4551f = (st1) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.f4552g = (m) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder2));
        this.f4553h = (fi) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder3));
        this.t = (x) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder6));
        this.f4554i = (z) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder4));
        this.f4555j = str;
        this.f4556k = z;
        this.f4557l = str2;
        this.m = (p) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder5));
        this.n = i2;
        this.o = i3;
        this.p = str3;
        this.q = zzawvVar;
        this.r = str4;
        this.s = zziVar;
    }
}
