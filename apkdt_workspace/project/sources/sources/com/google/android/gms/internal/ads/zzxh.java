package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class zzxh extends zzuv {
    final /* synthetic */ zzxf zzcez;

    private zzxh(zzxf zzxfVar) {
        this.zzcez = zzxfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zza(zztp zztpVar, int i2) {
        qd.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        gd.f6840b.post(new bv1(this));
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zzb(zztp zztpVar) {
        zza(zztpVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final String zzjp() {
        return null;
    }
}
