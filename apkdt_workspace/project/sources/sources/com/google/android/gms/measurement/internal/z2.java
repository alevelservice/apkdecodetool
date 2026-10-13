package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class z2 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ long f13360e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ a f13361f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z2(a aVar, long j2) {
        this.f13361f = aVar;
        this.f13360e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13361f.b(this.f13360e);
    }
}
