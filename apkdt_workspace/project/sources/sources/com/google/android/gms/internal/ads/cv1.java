package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class cv1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzxj f6123e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv1(zzxj zzxjVar) {
        this.f6123e = zzxjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzur zzurVar;
        zzur zzurVar2;
        zzurVar = this.f6123e.f11265e;
        if (zzurVar != null) {
            try {
                zzurVar2 = this.f6123e.f11265e;
                zzurVar2.onAdFailedToLoad(1);
            } catch (RemoteException e2) {
                qd.c("Could not notify onAdFailedToLoad event.", e2);
            }
        }
    }
}
