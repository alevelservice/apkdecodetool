package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
final /* synthetic */ class z implements Executor {

    /* renamed from: e, reason: collision with root package name */
    static final Executor f4968e = new z();

    private z() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
