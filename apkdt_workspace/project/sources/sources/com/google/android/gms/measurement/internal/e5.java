package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e5 extends f5 {

    /* renamed from: b, reason: collision with root package name */
    private boolean f12868b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e5(j4 j4Var) {
        super(j4Var);
        this.f12908a.a(this);
    }

    public final void k() {
        if (!this.f12868b) {
            if (o()) {
                return;
            }
            this.f12908a.q();
            this.f12868b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean l() {
        return this.f12868b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m() {
        if (!l()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void n() {
        if (!this.f12868b) {
            p();
            this.f12908a.q();
            this.f12868b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean o();

    protected void p() {
    }
}
