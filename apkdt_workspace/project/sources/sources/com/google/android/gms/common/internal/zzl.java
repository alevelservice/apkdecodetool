package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zzb;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class zzl extends zzb implements IGmsCallbacks {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void onPostInitComplete(int i2, IBinder iBinder, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(i2);
        zza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.a.a(zza, bundle);
        zzb(1, zza);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zza(int i2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeInt(i2);
        com.google.android.gms.internal.common.a.a(zza, bundle);
        zzb(2, zza);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    public final void zza(int i2, IBinder iBinder, zza zzaVar) {
        Parcel zza = zza();
        zza.writeInt(i2);
        zza.writeStrongBinder(iBinder);
        com.google.android.gms.internal.common.a.a(zza, zzaVar);
        zzb(3, zza);
    }
}
