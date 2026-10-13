package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class du0 implements oe1<ScheduledExecutorService> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ThreadFactory> f6311a;

    public du0(af1<ThreadFactory> af1Var) {
        this.f6311a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, this.f6311a.get());
        ue1.a(scheduledThreadPoolExecutor, "Cannot return null from a non-@Nullable @Provides method");
        return scheduledThreadPoolExecutor;
    }
}
