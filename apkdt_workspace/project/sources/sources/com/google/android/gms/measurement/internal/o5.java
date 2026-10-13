package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f13125e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13126f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o5(p5 p5Var, AtomicReference atomicReference) {
        this.f13126f = p5Var;
        this.f13125e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f13125e) {
            try {
                this.f13125e.set(Boolean.valueOf(this.f13126f.d().g(this.f13126f.n().z())));
            } finally {
                this.f13125e.notify();
            }
        }
    }
}
