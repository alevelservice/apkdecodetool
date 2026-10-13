package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzp;

/* loaded from: classes.dex */
final class z7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzp f13369e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzai f13370f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13371g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ AppMeasurementDynamiteService f13372h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z7(AppMeasurementDynamiteService appMeasurementDynamiteService, zzp zzpVar, zzai zzaiVar, String str) {
        this.f13372h = appMeasurementDynamiteService;
        this.f13369e = zzpVar;
        this.f13370f = zzaiVar;
        this.f13371g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13372h.zzj.x().a(this.f13369e, this.f13370f, this.f13371g);
    }
}
