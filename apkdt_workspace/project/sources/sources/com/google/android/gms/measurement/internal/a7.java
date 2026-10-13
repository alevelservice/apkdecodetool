package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f12768e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzp f12769f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ u6 f12770g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a7(u6 u6Var, zzn zznVar, zzp zzpVar) {
        this.f12770g = u6Var;
        this.f12768e = zznVar;
        this.f12769f = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        try {
            zzdxVar = this.f12770g.f13255d;
            if (zzdxVar == null) {
                this.f12770g.zzab().q().a("Failed to get app instance id");
                return;
            }
            String zzc = zzdxVar.zzc(this.f12768e);
            if (zzc != null) {
                this.f12770g.m().a(zzc);
                this.f12770g.c().f13121l.a(zzc);
            }
            this.f12770g.G();
            this.f12770g.j().a(this.f12769f, zzc);
        } catch (RemoteException e2) {
            this.f12770g.zzab().q().a("Failed to get app instance id", e2);
        } finally {
            this.f12770g.j().a(this.f12769f, (String) null);
        }
    }
}
