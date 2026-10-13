package com.google.android.gms.common.util.v;

import android.os.Process;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
final class b implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final Runnable f5434e;

    /* renamed from: f, reason: collision with root package name */
    private final int f5435f;

    public b(Runnable runnable, int i2) {
        this.f5434e = runnable;
        this.f5435f = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f5435f);
        this.f5434e.run();
    }
}
