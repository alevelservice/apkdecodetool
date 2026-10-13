package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class fv1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzxr f6726e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fv1(zzxr zzxrVar) {
        this.f6726e = zzxrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzapo zzapoVar;
        zzapo zzapoVar2;
        zzapoVar = this.f6726e.f11267e;
        if (zzapoVar != null) {
            try {
                zzapoVar2 = this.f6726e.f11267e;
                zzapoVar2.onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e2) {
                qd.c("Could not notify onRewardedVideoAdFailedToLoad event.", e2);
            }
        }
    }
}
