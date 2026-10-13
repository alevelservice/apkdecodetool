package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f13281e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ zzjn f13282f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzn f13283g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ u6 f13284h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v6(u6 u6Var, boolean z, zzjn zzjnVar, zzn zznVar) {
        this.f13284h = u6Var;
        this.f13281e = z;
        this.f13282f = zzjnVar;
        this.f13283g = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdx zzdxVar;
        zzdxVar = this.f13284h.f13255d;
        if (zzdxVar == null) {
            this.f13284h.zzab().q().a("Discarding data. Failed to set user attribute");
        } else {
            this.f13284h.a(zzdxVar, this.f13281e ? null : this.f13282f, this.f13283g);
            this.f13284h.G();
        }
    }
}
