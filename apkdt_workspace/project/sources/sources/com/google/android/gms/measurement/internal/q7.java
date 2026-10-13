package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

/* loaded from: classes.dex */
final class q7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ m7 f13176e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q7(m7 m7Var) {
        this.f13176e = m7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u6 u6Var = this.f13176e.f13092g;
        Context context = u6Var.getContext();
        this.f13176e.f13092g.zzae();
        u6Var.a(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
