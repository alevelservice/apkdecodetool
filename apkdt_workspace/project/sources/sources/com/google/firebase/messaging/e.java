package com.google.firebase.messaging;

import java.util.concurrent.Executor;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final /* synthetic */ class e implements Executor {

    /* renamed from: e, reason: collision with root package name */
    static final Executor f15238e = new e();

    private e() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
