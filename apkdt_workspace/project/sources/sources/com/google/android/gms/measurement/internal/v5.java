package com.google.android.gms.measurement.internal;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Bundle f13279e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13280f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v5(p5 p5Var, Bundle bundle) {
        this.f13280f = p5Var;
        this.f13279e = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13280f.c(this.f13279e);
    }
}
