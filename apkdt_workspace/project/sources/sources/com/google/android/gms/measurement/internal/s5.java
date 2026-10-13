package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class s5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ k5 f13218e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13219f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s5(p5 p5Var, k5 k5Var) {
        this.f13219f = p5Var;
        this.f13218e = k5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13219f.a(this.f13218e);
    }
}
