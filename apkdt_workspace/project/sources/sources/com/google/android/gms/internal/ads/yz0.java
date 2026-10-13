package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.fy0;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class yz0 extends fy0.k<Void> implements Runnable {

    /* renamed from: l, reason: collision with root package name */
    private final Runnable f10666l;

    public yz0(Runnable runnable) {
        uw0.a(runnable);
        this.f10666l = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f10666l.run();
        } catch (Throwable th) {
            a(th);
            bx0.b(th);
            throw null;
        }
    }
}
