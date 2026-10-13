package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f12911e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ boolean f12912f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzq f12913g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzn f12914h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ zzq f12915i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ u6 f12916j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f7(u6 u6Var, boolean z, boolean z2, zzq zzqVar, zzn zznVar, zzq zzqVar2) {
        this.f12916j = u6Var;
        this.f12911e = z;
        this.f12912f = z2;
        this.f12913g = zzqVar;
        this.f12914h = zznVar;
        this.f12915i = zzqVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f12916j.f13255d;
        if (zzdxVar == null) {
            this.f12916j.zzab().q().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f12911e) {
            this.f12916j.a(zzdxVar, this.f12912f ? null : this.f12913g, this.f12914h);
        } else {
            try {
                if (TextUtils.isEmpty(this.f12915i.f13399e)) {
                    zzdxVar.zza(this.f12913g, this.f12914h);
                } else {
                    zzdxVar.zzb(this.f12913g);
                }
            } catch (RemoteException e2) {
                this.f12916j.zzab().q().a("Failed to send conditional user property to the service", e2);
            }
        }
        this.f12916j.G();
    }
}
