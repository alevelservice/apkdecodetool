package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class q5 implements com.google.android.gms.ads.mediation.c<com.google.android.gms.ads.mediation.o, Object> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzali f8847a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q5(zzals zzalsVar, zzali zzaliVar, zzajj zzajjVar) {
        this.f8847a = zzaliVar;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void onFailure(String str) {
        try {
            this.f8847a.zzdg(str);
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }
}
