package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class p5 implements com.google.android.gms.ads.mediation.c<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzakx f8645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p5(zzals zzalsVar, zzakx zzakxVar, zzajj zzajjVar) {
        this.f8645a = zzakxVar;
    }

    @Override // com.google.android.gms.ads.mediation.c
    public final void onFailure(String str) {
        try {
            this.f8645a.zzdg(str);
        } catch (RemoteException e2) {
            qd.b("", e2);
        }
    }
}
