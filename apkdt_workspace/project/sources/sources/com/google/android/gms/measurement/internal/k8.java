package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k8 implements Callable<String> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzn f13049e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ g8 f13050f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k8(g8 g8Var, zzn zznVar) {
        this.f13050f = g8Var;
        this.f13049e = zznVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        a4 e2;
        e2 = this.f13050f.e(this.f13049e);
        if (e2 == null) {
            this.f13050f.zzab().t().a("App info was null when attempting to get app instance id");
            return null;
        }
        return e2.a();
    }
}
