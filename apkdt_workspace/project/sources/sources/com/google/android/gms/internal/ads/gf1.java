package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class gf1 implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private final ThreadFactory f6866e = Executors.defaultThreadFactory();

    /* renamed from: f, reason: collision with root package name */
    private final AtomicInteger f6867f = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f6866e.newThread(runnable);
        int andIncrement = this.f6867f.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
