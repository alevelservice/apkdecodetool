package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzaca extends zzfn implements zzaby {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaca(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaby
    public final void zza(zzabo zzaboVar, String str) {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        tg1.a(obtainAndWriteInterfaceToken, zzaboVar);
        obtainAndWriteInterfaceToken.writeString(str);
        zza(1, obtainAndWriteInterfaceToken);
    }
}
