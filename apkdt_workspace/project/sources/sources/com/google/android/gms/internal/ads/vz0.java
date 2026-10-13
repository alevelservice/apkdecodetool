package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vz0 implements Executor {

    /* renamed from: e, reason: collision with root package name */
    boolean f10005e = true;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ Executor f10006f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ fy0 f10007g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vz0(Executor executor, fy0 fy0Var) {
        this.f10006f = executor;
        this.f10007g = fy0Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.f10006f.execute(new uz0(this, runnable));
        } catch (RejectedExecutionException e2) {
            if (this.f10005e) {
                this.f10007g.a((Throwable) e2);
            }
        }
    }
}
