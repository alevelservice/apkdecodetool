package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzafr extends zzfn implements zzafp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzafr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzafp
    public final void zza(zzafl zzaflVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaflVar);
        zza(1, obtainAndWriteInterfaceToken);
    }

    @Override // com.google.android.gms.internal.ads.zzafp
    public final void zzcl(int i2) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeInt(i2);
        zza(2, obtainAndWriteInterfaceToken);
    }
}
