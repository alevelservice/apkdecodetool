package com.google.android.gms.measurement.internal;

import android.content.ComponentName;

/* loaded from: classes.dex */
final class o7 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ComponentName f13127e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ m7 f13128f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o7(m7 m7Var, ComponentName componentName) {
        this.f13128f = m7Var;
        this.f13127e = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13128f.f13092g.a(this.f13127e);
    }
}
