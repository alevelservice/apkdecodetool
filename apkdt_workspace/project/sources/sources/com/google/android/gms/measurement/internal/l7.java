package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class l7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzdx f13065e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ m7 f13066f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l7(m7 m7Var, zzdx zzdxVar) {
        this.f13066f = m7Var;
        this.f13065e = zzdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f13066f) {
            m7.a(this.f13066f, false);
            if (!this.f13066f.f13092g.z()) {
                this.f13066f.f13092g.zzab().y().a("Connected to service");
                this.f13066f.f13092g.a(this.f13065e);
            }
        }
    }
}
