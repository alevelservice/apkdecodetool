package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzp;

/* loaded from: classes.dex */
final class y6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzp f13349e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13350f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13351g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ boolean f13352h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ AppMeasurementDynamiteService f13353i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y6(AppMeasurementDynamiteService appMeasurementDynamiteService, zzp zzpVar, String str, String str2, boolean z) {
        this.f13353i = appMeasurementDynamiteService;
        this.f13349e = zzpVar;
        this.f13350f = str;
        this.f13351g = str2;
        this.f13352h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13353i.zzj.x().a(this.f13349e, this.f13350f, this.f13351g, this.f13352h);
    }
}
