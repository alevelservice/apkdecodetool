package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzus extends zzfn implements zzuq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzus(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void onAdClicked() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
