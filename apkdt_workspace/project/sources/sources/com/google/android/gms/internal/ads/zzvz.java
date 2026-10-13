package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzvz extends zzfn implements zzvx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzvx
    public final void onAdMuted() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
