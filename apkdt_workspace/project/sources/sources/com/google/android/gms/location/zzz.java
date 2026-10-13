package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.location.zza;

/* loaded from: classes.dex */
public final class zzz extends zza implements zzx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationListener");
    }

    @Override // com.google.android.gms.location.zzx
    public final void onLocationChanged(Location location) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.location.q.a(obtainAndWriteInterfaceToken, location);
        transactOneway(1, obtainAndWriteInterfaceToken);
    }
}
