package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.io.InputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class db0 extends bb0 {
    public db0(Context context) {
        this.f5746j = new a7(context, com.google.android.gms.ads.internal.n.q().b(), this, this);
    }

    public final qz0<InputStream> a(zzaok zzaokVar) {
        synchronized (this.f5742f) {
            if (this.f5743g) {
                return this.f5741e;
            }
            this.f5743g = true;
            this.f5745i = zzaokVar;
            this.f5746j.k();
            this.f5741e.a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cb0

                /* renamed from: e, reason: collision with root package name */
                private final db0 f5968e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5968e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f5968e.a();
                }
            }, yd.f10544e);
            return this.f5741e;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(Bundle bundle) {
        synchronized (this.f5742f) {
            if (!this.f5744h) {
                this.f5744h = true;
                try {
                    this.f5746j.A().zzb(this.f5745i, new zzcdl(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.f5741e.a(new gb0(0));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.n.g().a(th, "RemoteSignalsClientTask.onConnected");
                    this.f5741e.a(new gb0(0));
                }
            }
        }
    }
}
