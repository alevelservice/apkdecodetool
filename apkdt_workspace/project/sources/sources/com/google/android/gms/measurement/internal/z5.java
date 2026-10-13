package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f13364e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13365f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z5(p5 p5Var, AtomicReference atomicReference) {
        this.f13365f = p5Var;
        this.f13364e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f13364e) {
            try {
                this.f13364e.set(Long.valueOf(this.f13365f.d().a(this.f13365f.n().z(), j.O)));
            } finally {
                this.f13364e.notify();
            }
        }
    }
}
