package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class a8 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ long f12771e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ v7 f12772f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a8(v7 v7Var, long j2) {
        this.f12772f = v7Var;
        this.f12771e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12772f.b(this.f12771e);
    }
}
