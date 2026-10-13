package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@SafeParcelable.Class(creator = "GoogleCertificatesQueryCreator")
/* loaded from: classes.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new v();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getCallingPackage", id = 1)
    private final String f5444e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getCallingCertificateBinder", id = 2, type = "android.os.IBinder")
    private final zzd f5445f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAllowTestKeys", id = 3)
    private final boolean f5446g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "false", getter = "getIgnoreTestKeysOverride", id = 4)
    private final boolean f5447h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzj(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) @Nullable IBinder iBinder, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) boolean z2) {
        this.f5444e = str;
        this.f5445f = a(iBinder);
        this.f5446g = z;
        this.f5447h = z2;
    }

    @Nullable
    private static zzd a(@Nullable IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        try {
            IObjectWrapper zzb = com.google.android.gms.common.internal.zzk.zzb(iBinder).zzb();
            byte[] bArr = zzb == null ? null : (byte[]) ObjectWrapper.unwrap(zzb);
            if (bArr != null) {
                return new zzg(bArr);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5444e, false);
        zzd zzdVar = this.f5445f;
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, zzdVar == null ? null : zzdVar.asBinder(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5446g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5447h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(String str, @Nullable zzd zzdVar, boolean z, boolean z2) {
        this.f5444e = str;
        this.f5445f = zzdVar;
        this.f5446g = z;
        this.f5447h = z2;
    }
}
