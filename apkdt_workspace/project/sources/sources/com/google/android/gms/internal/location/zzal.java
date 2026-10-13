package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzal extends zza implements zzaj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzaj
    public final void zza(zzad zzadVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        q.a(obtainAndWriteInterfaceToken, zzadVar);
        transactOneway(1, obtainAndWriteInterfaceToken);
    }
}
