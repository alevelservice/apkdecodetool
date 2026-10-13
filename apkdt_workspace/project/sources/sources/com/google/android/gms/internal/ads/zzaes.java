package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaes extends zzfn implements zzaep {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaes(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzaep
    public final void zza(zzaej zzaejVar, zzaen zzaenVar) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaejVar);
        tg1.a(obtainAndWriteInterfaceToken, zzaenVar);
        zzb(2, obtainAndWriteInterfaceToken);
    }
}
