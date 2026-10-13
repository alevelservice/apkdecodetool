package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wi0 implements st1 {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzuq f10130e;

    public final synchronized void a(zzuq zzuqVar) {
        this.f10130e = zzuqVar;
    }

    @Override // com.google.android.gms.internal.ads.st1
    public final synchronized void onAdClicked() {
        if (this.f10130e != null) {
            try {
                this.f10130e.onAdClicked();
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdClicked.", e2);
            }
        }
    }
}
