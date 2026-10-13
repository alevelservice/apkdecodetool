package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f8 extends b {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ g8 f12917e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ c8 f12918f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f8(c8 c8Var, h5 h5Var, g8 g8Var) {
        super(h5Var);
        this.f12918f = c8Var;
        this.f12917e = g8Var;
    }

    @Override // com.google.android.gms.measurement.internal.b
    public final void b() {
        this.f12918f.s();
        this.f12918f.zzab().y().a("Starting upload from DelayedRunnable");
        this.f12917e.l();
    }
}
