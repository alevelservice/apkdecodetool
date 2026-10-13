package com.google.firebase.iid;

import java.util.concurrent.Executor;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
final /* synthetic */ class j implements Executor {

    /* renamed from: e, reason: collision with root package name */
    static final Executor f14995e = new j();

    private j() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
