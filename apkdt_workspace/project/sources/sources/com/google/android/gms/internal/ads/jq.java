package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jq implements qu, fq1 {

    /* renamed from: e, reason: collision with root package name */
    private final ns0 f7551e;

    /* renamed from: f, reason: collision with root package name */
    private final rt f7552f;

    /* renamed from: g, reason: collision with root package name */
    private final uu f7553g;

    /* renamed from: h, reason: collision with root package name */
    private final AtomicBoolean f7554h = new AtomicBoolean();

    /* renamed from: i, reason: collision with root package name */
    private final AtomicBoolean f7555i = new AtomicBoolean();

    public jq(ns0 ns0Var, rt rtVar, uu uuVar) {
        this.f7551e = ns0Var;
        this.f7552f = rtVar;
        this.f7553g = uuVar;
    }

    private final void a() {
        if (this.f7554h.compareAndSet(false, true)) {
            this.f7552f.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final synchronized void onAdLoaded() {
        if (this.f7551e.f8419e != 1) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final void zza(cq1 cq1Var) {
        if (this.f7551e.f8419e == 1 && cq1Var.f6096j) {
            a();
        }
        if (cq1Var.f6096j && this.f7555i.compareAndSet(false, true)) {
            this.f7553g.g();
        }
    }
}
