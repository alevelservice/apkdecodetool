package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ma implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ja f8069e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ma(ja jaVar) {
        this.f8069e = jaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8069e.f7446b = Thread.currentThread();
        this.f8069e.a();
    }
}
