package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.zzu;
import com.google.android.gms.location.zzv;
import com.google.android.gms.location.zzx;
import com.google.android.gms.location.zzy;

@SafeParcelable.Class(creator = "LocationRequestUpdateDataCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbf> CREATOR = new k();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequestUpdateData.OPERATION_ADD", id = 1)
    private int f11709e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 2)
    private zzbd f11710f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getLocationListenerBinder", id = 3, type = "android.os.IBinder")
    private zzx f11711g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 4)
    private PendingIntent f11712h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getLocationCallbackBinder", id = 5, type = "android.os.IBinder")
    private zzu f11713i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", getter = "getFusedLocationProviderCallbackBinder", id = 6, type = "android.os.IBinder")
    private zzaj f11714j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzbf(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) zzbd zzbdVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) PendingIntent pendingIntent, @SafeParcelable.Param(id = 5) IBinder iBinder2, @SafeParcelable.Param(id = 6) IBinder iBinder3) {
        this.f11709e = i2;
        this.f11710f = zzbdVar;
        zzaj zzajVar = null;
        this.f11711g = iBinder == null ? null : zzy.zzc(iBinder);
        this.f11712h = pendingIntent;
        this.f11713i = iBinder2 == null ? null : zzv.zzb(iBinder2);
        if (iBinder3 != null && iBinder3 != null) {
            IInterface queryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzajVar = queryLocalInterface instanceof zzaj ? (zzaj) queryLocalInterface : new zzal(iBinder3);
        }
        this.f11714j = zzajVar;
    }

    public static zzbf a(zzu zzuVar, @Nullable zzaj zzajVar) {
        return new zzbf(2, null, null, null, zzuVar.asBinder(), zzajVar != null ? zzajVar.asBinder() : null);
    }

    public static zzbf a(zzx zzxVar, @Nullable zzaj zzajVar) {
        return new zzbf(2, null, zzxVar.asBinder(), null, null, zzajVar != null ? zzajVar.asBinder() : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11709e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f11710f, i2, false);
        zzx zzxVar = this.f11711g;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, zzxVar == null ? null : zzxVar.asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f11712h, i2, false);
        zzu zzuVar = this.f11713i;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, zzuVar == null ? null : zzuVar.asBinder(), false);
        zzaj zzajVar = this.f11714j;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, zzajVar != null ? zzajVar.asBinder() : null, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
