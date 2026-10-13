package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13366e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ boolean f13367f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ u6 f13368g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z6(u6 u6Var, zzn zznVar, boolean z) {
        this.f13368g = u6Var;
        this.f13366e = zznVar;
        this.f13367f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f13368g.f13255d;
        if (zzdxVar == null) {
            this.f13368g.zzab().q().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzdxVar.zza(this.f13366e);
            if (this.f13367f) {
                this.f13368g.q().A();
            }
            this.f13368g.a(zzdxVar, (AbstractSafeParcelable) null, this.f13366e);
            this.f13368g.G();
        } catch (RemoteException e2) {
            this.f13368g.zzab().q().a("Failed to send app launch to the service", e2);
        }
    }
}
