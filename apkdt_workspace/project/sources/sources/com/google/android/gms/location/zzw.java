package com.google.android.gms.location;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.location.zza;

/* loaded from: classes.dex */
public final class zzw extends zza implements zzu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationCallback");
    }

    @Override // com.google.android.gms.location.zzu
    public final void onLocationAvailability(LocationAvailability locationAvailability) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.location.q.a(obtainAndWriteInterfaceToken, locationAvailability);
        transactOneway(2, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.location.zzu
    public final void onLocationResult(LocationResult locationResult) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        com.google.android.gms.internal.location.q.a(obtainAndWriteInterfaceToken, locationResult);
        transactOneway(1, obtainAndWriteInterfaceToken);
    }
}
