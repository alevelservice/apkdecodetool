package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class b8 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ long f12790e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ v7 f12791f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b8(v7 v7Var, long j2) {
        this.f12791f = v7Var;
        this.f12790e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12791f.a(this.f12790e);
    }
}
