package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ long f12909e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f12910f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f6(p5 p5Var, long j2) {
        this.f12910f = p5Var;
        this.f12909e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12910f.c().q.a(this.f12909e);
        this.f12910f.zzab().x().a("Session timeout duration set", Long.valueOf(this.f12909e));
    }
}
