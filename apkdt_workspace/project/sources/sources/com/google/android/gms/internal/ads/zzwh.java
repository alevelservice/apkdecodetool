package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzwh extends zzfn implements zzwf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwf
    public final void onAdMetadataChanged() {
        zza(1, obtainAndWriteInterfaceToken());
    }
}
