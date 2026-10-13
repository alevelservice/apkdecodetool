package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w5 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ AtomicReference f13306e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ p5 f13307f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w5(p5 p5Var, AtomicReference atomicReference) {
        this.f13307f = p5Var;
        this.f13306e = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f13306e) {
            try {
                this.f13306e.set(this.f13307f.d().h(this.f13307f.n().z()));
            } finally {
                this.f13306e.notify();
            }
        }
    }
}
