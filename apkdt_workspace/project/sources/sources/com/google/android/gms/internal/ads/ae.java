package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ae implements Executor {

    /* renamed from: e, reason: collision with root package name */
    private final Handler f5562e = new qa(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.n.c();
                wa.a(com.google.android.gms.ads.internal.n.g().a(), th);
                throw th;
            }
        }
        this.f5562e.post(runnable);
    }
}
