package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class z4 extends b2 {

    /* renamed from: b, reason: collision with root package name */
    private boolean f13363b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z4(j4 j4Var) {
        super(j4Var);
        this.f12908a.a(this);
    }

    public final void s() {
        if (!this.f13363b) {
            if (w()) {
                return;
            }
            this.f12908a.q();
            this.f13363b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean t() {
        return this.f13363b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u() {
        if (!t()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void v() {
        if (!this.f13363b) {
            x();
            this.f12908a.q();
            this.f13363b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean w();

    protected void x() {
    }
}
