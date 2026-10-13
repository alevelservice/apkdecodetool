package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class da {

    /* renamed from: a, reason: collision with root package name */
    private final Object f6184a;

    /* renamed from: b, reason: collision with root package name */
    private volatile int f6185b;

    /* renamed from: c, reason: collision with root package name */
    private volatile long f6186c;

    private da() {
        this.f6184a = new Object();
        this.f6185b = ga.f6833a;
        this.f6186c = 0L;
    }

    public final void a() {
        long a2 = com.google.android.gms.ads.internal.n.j().a();
        synchronized (this.f6184a) {
            if (this.f6185b == ga.f6834b) {
                if (this.f6186c + ((Long) mu1.e().a(aw1.p3)).longValue() <= a2) {
                    this.f6185b = ga.f6833a;
                }
            }
        }
        long a3 = com.google.android.gms.ads.internal.n.j().a();
        synchronized (this.f6184a) {
            if (this.f6185b != 2) {
                return;
            }
            this.f6185b = 3;
            if (this.f6185b == ga.f6834b) {
                this.f6186c = a3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ da(ea eaVar) {
        this();
    }
}
