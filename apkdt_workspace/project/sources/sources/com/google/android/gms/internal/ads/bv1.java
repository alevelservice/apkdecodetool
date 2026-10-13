package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class bv1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzxh f5875e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv1(zzxh zzxhVar) {
        this.f5875e = zzxhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (zzxf.zza(this.f5875e.zzcez) != null) {
            try {
                zzxf.zza(this.f5875e.zzcez).onAdFailedToLoad(1);
            } catch (RemoteException e2) {
                qd.c("Could not notify onAdFailedToLoad event.", e2);
            }
        }
    }
}
