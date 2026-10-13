package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Bundle f13252e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13253f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u5(p5 p5Var, Bundle bundle) {
        this.f13253f = p5Var;
        this.f13252e = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13253f.d(this.f13252e);
    }
}
