package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzai f12786e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f12787f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzp f12788g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ u6 f12789h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b7(u6 u6Var, zzai zzaiVar, String str, zzp zzpVar) {
        this.f12789h = u6Var;
        this.f12786e = zzaiVar;
        this.f12787f = str;
        this.f12788g = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        try {
            zzdxVar = this.f12789h.f13255d;
            if (zzdxVar == null) {
                this.f12789h.zzab().q().a("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] zza = zzdxVar.zza(this.f12786e, this.f12787f);
            this.f12789h.G();
            this.f12789h.j().a(this.f12788g, zza);
        } catch (RemoteException e2) {
            this.f12789h.zzab().q().a("Failed to send event to the service to bundle", e2);
        } finally {
            this.f12789h.j().a(this.f12788g, (byte[]) null);
        }
    }
}
