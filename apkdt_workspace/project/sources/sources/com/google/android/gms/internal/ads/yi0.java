package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yi0 implements com.google.android.gms.ads.doubleclick.a {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzvm f10568e;

    public final synchronized void a(zzvm zzvmVar) {
        this.f10568e = zzvmVar;
    }

    @Override // com.google.android.gms.ads.doubleclick.a
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.f10568e != null) {
            try {
                this.f10568e.onAppEvent(str, str2);
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAppEvent.", e2);
            }
        }
    }

    public final synchronized zzvm a() {
        return this.f10568e;
    }
}
