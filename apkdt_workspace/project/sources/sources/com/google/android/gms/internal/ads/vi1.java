package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class vi1 implements Executor {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Handler f9937e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vi1(vj1 vj1Var, Handler handler) {
        this.f9937e = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f9937e.post(runnable);
    }
}
