package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sh0 implements com.google.android.gms.ads.internal.g {

    /* renamed from: a, reason: collision with root package name */
    private final it f9354a;

    /* renamed from: b, reason: collision with root package name */
    private final rt f9355b;

    /* renamed from: c, reason: collision with root package name */
    private final sx f9356c;

    /* renamed from: d, reason: collision with root package name */
    private final nx f9357d;

    /* renamed from: e, reason: collision with root package name */
    private final qn f9358e;

    /* renamed from: f, reason: collision with root package name */
    private AtomicBoolean f9359f = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public sh0(it itVar, rt rtVar, sx sxVar, nx nxVar, qn qnVar) {
        this.f9354a = itVar;
        this.f9355b = rtVar;
        this.f9356c = sxVar;
        this.f9357d = nxVar;
        this.f9358e = qnVar;
    }

    @Override // com.google.android.gms.ads.internal.g
    public final synchronized void a(View view) {
        if (this.f9359f.compareAndSet(false, true)) {
            this.f9358e.onAdImpression();
            this.f9357d.a(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void b() {
        if (this.f9359f.get()) {
            this.f9355b.g();
            this.f9356c.g();
        }
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void a() {
        if (this.f9359f.get()) {
            this.f9354a.onAdClicked();
        }
    }
}
