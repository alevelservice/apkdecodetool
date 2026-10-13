package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f12784e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f12785f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6(p5 p5Var, AtomicReference atomicReference) {
        this.f12785f = p5Var;
        this.f12784e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12784e) {
            try {
                this.f12784e.set(Double.valueOf(this.f12785f.d().c(this.f12785f.n().z(), j.Q)));
            } finally {
                this.f12784e.notify();
            }
        }
    }
}
