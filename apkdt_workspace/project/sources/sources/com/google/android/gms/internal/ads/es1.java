package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class es1 implements BaseGmsClient.a {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzrl f6498e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ he f6499f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ cs1 f6500g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public es1(cs1 cs1Var, zzrl zzrlVar, he heVar) {
        this.f6500g = cs1Var;
        this.f6498e = zzrlVar;
        this.f6499f = heVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        boolean z;
        final wr1 wr1Var;
        obj = this.f6500g.f6114d;
        synchronized (obj) {
            z = this.f6500g.f6112b;
            if (z) {
                return;
            }
            cs1.a(this.f6500g, true);
            wr1Var = this.f6500g.f6111a;
            if (wr1Var == null) {
                return;
            }
            tz0 tz0Var = yd.f10540a;
            final zzrl zzrlVar = this.f6498e;
            final he heVar = this.f6499f;
            final qz0<?> submit = tz0Var.submit(new Runnable(this, wr1Var, zzrlVar, heVar) { // from class: com.google.android.gms.internal.ads.ds1

                /* renamed from: e, reason: collision with root package name */
                private final es1 f6305e;

                /* renamed from: f, reason: collision with root package name */
                private final wr1 f6306f;

                /* renamed from: g, reason: collision with root package name */
                private final zzrl f6307g;

                /* renamed from: h, reason: collision with root package name */
                private final he f6308h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6305e = this;
                    this.f6306f = wr1Var;
                    this.f6307g = zzrlVar;
                    this.f6308h = heVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    es1 es1Var = this.f6305e;
                    wr1 wr1Var2 = this.f6306f;
                    zzrl zzrlVar2 = this.f6307g;
                    he heVar2 = this.f6308h;
                    try {
                        zzrg zza = wr1Var2.A().zza(zzrlVar2);
                        if (!zza.j()) {
                            heVar2.a(new RuntimeException("No entry contents."));
                            es1Var.f6500g.a();
                            return;
                        }
                        fs1 fs1Var = new fs1(es1Var, zza.k(), 1);
                        int read = fs1Var.read();
                        if (read != -1) {
                            fs1Var.unread(read);
                            heVar2.b(fs1Var);
                            return;
                        }
                        throw new IOException("Unable to read from cache.");
                    } catch (RemoteException | IOException e2) {
                        qd.b("Unable to obtain a cache service instance.", e2);
                        heVar2.a(e2);
                        es1Var.f6500g.a();
                    }
                }
            });
            he heVar2 = this.f6499f;
            final he heVar3 = this.f6499f;
            heVar2.a(new Runnable(heVar3, submit) { // from class: com.google.android.gms.internal.ads.gs1

                /* renamed from: e, reason: collision with root package name */
                private final he f6969e;

                /* renamed from: f, reason: collision with root package name */
                private final Future f6970f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6969e = heVar3;
                    this.f6970f = submit;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    he heVar4 = this.f6969e;
                    Future future = this.f6970f;
                    if (heVar4.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, yd.f10544e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnectionSuspended(int i2) {
    }
}
