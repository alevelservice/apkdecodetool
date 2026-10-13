package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ h5 f12849e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ b f12850f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar, h5 h5Var) {
        this.f12850f = bVar;
        this.f12849e = h5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12849e.zzae();
        if (y8.a()) {
            this.f12849e.b().a(this);
            return;
        }
        boolean c2 = this.f12850f.c();
        b.a(this.f12850f, 0L);
        if (c2) {
            this.f12850f.b();
        }
    }
}
