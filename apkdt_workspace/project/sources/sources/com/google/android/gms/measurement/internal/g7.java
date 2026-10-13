package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f12935e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ boolean f12936f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzai f12937g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzn f12938h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ String f12939i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ u6 f12940j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g7(u6 u6Var, boolean z, boolean z2, zzai zzaiVar, zzn zznVar, String str) {
        this.f12940j = u6Var;
        this.f12935e = z;
        this.f12936f = z2;
        this.f12937g = zzaiVar;
        this.f12938h = zznVar;
        this.f12939i = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f12940j.f13255d;
        if (zzdxVar == null) {
            this.f12940j.zzab().q().a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f12935e) {
            this.f12940j.a(zzdxVar, this.f12936f ? null : this.f12937g, this.f12938h);
        } else {
            try {
                if (TextUtils.isEmpty(this.f12939i)) {
                    zzdxVar.zza(this.f12937g, this.f12938h);
                } else {
                    zzdxVar.zza(this.f12937g, this.f12939i, this.f12940j.zzab().z());
                }
            } catch (RemoteException e2) {
                this.f12940j.zzab().q().a("Failed to send event to the service", e2);
            }
        }
        this.f12940j.G();
    }
}
