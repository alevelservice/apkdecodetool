package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class r5 implements com.google.android.gms.ads.mediation.c<com.google.android.gms.ads.mediation.j, Object> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzalc f9037a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r5(zzals zzalsVar, zzalc zzalcVar, zzajj zzajjVar) {
        this.f9037a = zzalcVar;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void onFailure(String str) {
        try {
            this.f9037a.zzdg(str);
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }
}
