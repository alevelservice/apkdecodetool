package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tr1 implements BaseGmsClient.a {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ sr1 f9628e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tr1(sr1 sr1Var) {
        this.f9628e = sr1Var;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnected(@Nullable Bundle bundle) {
        Object obj;
        Object obj2;
        wr1 wr1Var;
        wr1 wr1Var2;
        obj = this.f9628e.f9430b;
        synchronized (obj) {
            try {
                wr1Var = this.f9628e.f9431c;
                if (wr1Var != null) {
                    sr1 sr1Var = this.f9628e;
                    wr1Var2 = this.f9628e.f9431c;
                    sr1Var.f9433e = wr1Var2.A();
                }
            } catch (DeadObjectException e2) {
                qd.b("Unable to obtain a cache service instance.", e2);
                this.f9628e.c();
            }
            obj2 = this.f9628e.f9430b;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.a
    public final void onConnectionSuspended(int i2) {
        Object obj;
        Object obj2;
        obj = this.f9628e.f9430b;
        synchronized (obj) {
            this.f9628e.f9433e = null;
            obj2 = this.f9628e.f9430b;
            obj2.notifyAll();
        }
    }
}
