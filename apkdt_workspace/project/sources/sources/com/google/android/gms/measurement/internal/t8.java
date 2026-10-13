package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzp;

/* loaded from: classes.dex */
final class t8 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzp f13242e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ AppMeasurementDynamiteService f13243f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t8(AppMeasurementDynamiteService appMeasurementDynamiteService, zzp zzpVar) {
        this.f13243f = appMeasurementDynamiteService;
        this.f13242e = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13243f.zzj.D().a(this.f13242e, this.f13243f.zzj.o());
    }
}
