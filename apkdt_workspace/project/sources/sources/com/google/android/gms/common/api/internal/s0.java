package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class s0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zace f5135e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(zace zaceVar) {
        this.f5135e = zaceVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t0 t0Var;
        t0Var = this.f5135e.f5159k;
        t0Var.b(new ConnectionResult(4));
    }
}
