package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class n7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzdx f13106e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ m7 f13107f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n7(m7 m7Var, zzdx zzdxVar) {
        this.f13107f = m7Var;
        this.f13106e = zzdxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f13107f) {
            m7.a(this.f13107f, false);
            if (!this.f13107f.f13092g.z()) {
                this.f13107f.f13092g.zzab().x().a("Connected to remote service");
                this.f13107f.f13092g.a(this.f13106e);
            }
        }
    }
}
