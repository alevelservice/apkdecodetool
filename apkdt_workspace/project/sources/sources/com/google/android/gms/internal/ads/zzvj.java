package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzvj extends zzfn implements zzvh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdMetadataChanged() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
