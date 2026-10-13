package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzp;

/* loaded from: classes.dex */
final class u8 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzp f13264e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13265f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13266g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ AppMeasurementDynamiteService f13267h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u8(AppMeasurementDynamiteService appMeasurementDynamiteService, zzp zzpVar, String str, String str2) {
        this.f13267h = appMeasurementDynamiteService;
        this.f13264e = zzpVar;
        this.f13265f = str;
        this.f13266g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13267h.zzj.x().a(this.f13264e, this.f13265f, this.f13266g);
    }
}
