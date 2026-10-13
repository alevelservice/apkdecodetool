package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c6 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f12806e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f12807f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c6(p5 p5Var, AtomicReference atomicReference) {
        this.f12807f = p5Var;
        this.f12806e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f12806e) {
            try {
                this.f12806e.set(Integer.valueOf(this.f12807f.d().b(this.f12807f.n().z(), j.P)));
            } finally {
                this.f12806e.notify();
            }
        }
    }
}
