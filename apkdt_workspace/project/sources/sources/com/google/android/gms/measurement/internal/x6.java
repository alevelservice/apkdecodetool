package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13326e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ u6 f13327f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x6(u6 u6Var, zzn zznVar) {
        this.f13327f = u6Var;
        this.f13326e = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f13327f.f13255d;
        if (zzdxVar == null) {
            this.f13327f.zzab().q().a("Failed to reset data on the service; null service");
            return;
        }
        try {
            zzdxVar.zzd(this.f13326e);
        } catch (RemoteException e2) {
            this.f13327f.zzab().q().a("Failed to reset data on the service", e2);
        }
        this.f13327f.G();
    }
}
