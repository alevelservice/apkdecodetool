package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ q6 f12808e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ u6 f12809f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c7(u6 u6Var, q6 q6Var) {
        this.f12809f = u6Var;
        this.f12808e = q6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f12809f.f13255d;
        if (zzdxVar == null) {
            this.f12809f.zzab().q().a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f12808e == null) {
                zzdxVar.zza(0L, (String) null, (String) null, this.f12809f.getContext().getPackageName());
            } else {
                zzdxVar.zza(this.f12808e.f13174c, this.f12808e.f13172a, this.f12808e.f13173b, this.f12809f.getContext().getPackageName());
            }
            this.f12809f.G();
        } catch (RemoteException e2) {
            this.f12809f.zzab().q().a("Failed to send current screen to the service", e2);
        }
    }
}
