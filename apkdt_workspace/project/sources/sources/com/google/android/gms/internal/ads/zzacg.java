package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzacg extends zzfn implements zzace {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzace
    public final void zza(zzve zzveVar, IObjectWrapper iObjectWrapper) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzveVar);
        tg1.a(obtainAndWriteInterfaceToken, iObjectWrapper);
        zza(1, obtainAndWriteInterfaceToken);
    }
}
