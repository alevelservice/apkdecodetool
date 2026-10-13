package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class h8 extends e8 {

    /* renamed from: c, reason: collision with root package name */
    private boolean f12975c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h8(g8 g8Var) {
        super(g8Var);
        this.f12872b.a(this);
    }

    public final void o() {
        if (!this.f12975c) {
            r();
            this.f12872b.n();
            this.f12975c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean p() {
        return this.f12975c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void q() {
        if (!p()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    protected abstract boolean r();
}
