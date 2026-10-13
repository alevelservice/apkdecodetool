package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class t5 implements com.google.android.gms.ads.mediation.c<com.google.android.gms.ads.mediation.x, Object> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzald f9510a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t5(zzals zzalsVar, zzald zzaldVar, zzajj zzajjVar) {
        this.f9510a = zzaldVar;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void onFailure(String str) {
        try {
            this.f9510a.zzdg(str);
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }
}
