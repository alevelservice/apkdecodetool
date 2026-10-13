package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class vl1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final uq1 f9953e;

    /* renamed from: f, reason: collision with root package name */
    private final hw1 f9954f;

    /* renamed from: g, reason: collision with root package name */
    private final Runnable f9955g;

    public vl1(uq1 uq1Var, hw1 hw1Var, Runnable runnable) {
        this.f9953e = uq1Var;
        this.f9954f = hw1Var;
        this.f9955g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9953e.d();
        if (this.f9954f.f7195c == null) {
            this.f9953e.a((uq1) this.f9954f.f7193a);
        } else {
            this.f9953e.a(this.f9954f.f7195c);
        }
        if (this.f9954f.f7196d) {
            this.f9953e.a("intermediate-response");
        } else {
            this.f9953e.b("done");
        }
        Runnable runnable = this.f9955g;
        if (runnable != null) {
            runnable.run();
        }
    }
}
