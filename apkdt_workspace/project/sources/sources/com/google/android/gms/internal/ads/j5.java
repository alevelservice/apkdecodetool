package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
final class j5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ e.i.a.a f7429e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ i5 f7430f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j5(i5 i5Var, e.i.a.a aVar) {
        this.f7430f = i5Var;
        this.f7429e = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzajj zzajjVar;
        try {
            zzajjVar = this.f7430f.f7227a;
            zzajjVar.onAdFailedToLoad(m5.a(this.f7429e));
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }
}
