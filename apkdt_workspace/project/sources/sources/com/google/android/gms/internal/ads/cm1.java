package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class cm1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ IOException f6069e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ yl1 f6070f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm1(yl1 yl1Var, IOException iOException) {
        this.f6070f = yl1Var;
        this.f6069e = iOException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        jm1 jm1Var;
        jm1Var = this.f6070f.f10595i;
        jm1Var.a(this.f6069e);
    }
}
