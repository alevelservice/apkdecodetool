package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vj1 implements b {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f9944a;

    public vj1(Handler handler) {
        this.f9944a = new vi1(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.b
    public final void a(uq1<?> uq1Var, hw1<?> hw1Var) {
        a(uq1Var, hw1Var, null);
    }

    @Override // com.google.android.gms.internal.ads.b
    public final void a(uq1<?> uq1Var, hw1<?> hw1Var, Runnable runnable) {
        uq1Var.k();
        uq1Var.a("post-response");
        this.f9944a.execute(new vl1(uq1Var, hw1Var, runnable));
    }

    @Override // com.google.android.gms.internal.ads.b
    public final void a(uq1<?> uq1Var, r0 r0Var) {
        uq1Var.a("post-error");
        this.f9944a.execute(new vl1(uq1Var, hw1.a(r0Var), null));
    }
}
