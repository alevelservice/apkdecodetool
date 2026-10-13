package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ boolean f12838e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f12839f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d6(p5 p5Var, boolean z) {
        this.f12839f = p5Var;
        this.f12838e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean c2 = this.f12839f.f12908a.c();
        boolean o = this.f12839f.f12908a.o();
        this.f12839f.f12908a.a(this.f12838e);
        if (o == this.f12838e) {
            this.f12839f.f12908a.zzab().y().a("Default data collection state already set to", Boolean.valueOf(this.f12838e));
        }
        if (this.f12839f.f12908a.c() == c2 || this.f12839f.f12908a.c() != this.f12839f.f12908a.o()) {
            this.f12839f.f12908a.zzab().v().a("Default data collection is different than actual status", Boolean.valueOf(this.f12838e), Boolean.valueOf(c2));
        }
        this.f12839f.J();
    }
}
