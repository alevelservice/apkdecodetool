package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gg1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ uq1 f6871e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ m70 f6872f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gg1(m70 m70Var, uq1 uq1Var) {
        this.f6872f = m70Var;
        this.f6871e = uq1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f6872f.f8035f;
            blockingQueue.put(this.f6871e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
