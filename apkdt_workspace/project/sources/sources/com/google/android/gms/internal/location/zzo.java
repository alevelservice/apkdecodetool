package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.zzr;
import com.google.android.gms.location.zzs;

@SafeParcelable.Class(creator = "DeviceOrientationRequestUpdateDataCreator")
/* loaded from: classes.dex */
public final class zzo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzo> CREATOR = new u();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequestUpdateData.OPERATION_ADD", id = 1)
    private int f11728e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 2)
    private zzm f11729f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getDeviceOrientationListenerBinder", id = 3, type = "android.os.IBinder")
    private zzr f11730g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getFusedLocationProviderCallbackBinder", id = 4, type = "android.os.IBinder")
    private zzaj f11731h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) zzm zzmVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2) {
        this.f11728e = i2;
        this.f11729f = zzmVar;
        zzaj zzajVar = null;
        this.f11730g = iBinder == null ? null : zzs.zza(iBinder);
        if (iBinder2 != null && iBinder2 != null) {
            IInterface queryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzajVar = queryLocalInterface instanceof zzaj ? (zzaj) queryLocalInterface : new zzal(iBinder2);
        }
        this.f11731h = zzajVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11728e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f11729f, i2, false);
        zzr zzrVar = this.f11730g;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, zzrVar == null ? null : zzrVar.asBinder(), false);
        zzaj zzajVar = this.f11731h;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, zzajVar != null ? zzajVar.asBinder() : null, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
