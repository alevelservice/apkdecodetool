package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f12840e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ u6 f12841f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d7(u6 u6Var, zzn zznVar) {
        this.f12841f = u6Var;
        this.f12840e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f12841f.f13255d;
        if (zzdxVar == null) {
            this.f12841f.zzab().q().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzdxVar.zzb(this.f12840e);
            this.f12841f.G();
        } catch (RemoteException e2) {
            this.f12841f.zzab().q().a("Failed to send measurementEnabled to the service", e2);
        }
    }
}
