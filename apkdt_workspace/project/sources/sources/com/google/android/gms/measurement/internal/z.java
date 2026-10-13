package com.google.android.gms.measurement.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f13355e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ long f13356f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ a f13357g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(a aVar, String str, long j2) {
        this.f13357g = aVar;
        this.f13355e = str;
        this.f13356f = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13357g.d(this.f13355e, this.f13356f);
    }
}
