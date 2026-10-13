package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzp;

/* loaded from: classes.dex */
final class y5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzp f13347e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ AppMeasurementDynamiteService f13348f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y5(AppMeasurementDynamiteService appMeasurementDynamiteService, zzp zzpVar) {
        this.f13348f = appMeasurementDynamiteService;
        this.f13347e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13348f.zzj.x().a(this.f13347e);
    }
}
