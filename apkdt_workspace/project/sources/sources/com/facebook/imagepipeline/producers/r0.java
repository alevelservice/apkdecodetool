package com.facebook.imagepipeline.producers;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;

/* compiled from: ThreadHandoffProducerQueue.java */
/* loaded from: classes.dex */
public class r0 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f4073a = false;

    /* renamed from: b, reason: collision with root package name */
    private final Deque<Runnable> f4074b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f4075c;

    public r0(Executor executor) {
        com.facebook.common.internal.h.a(executor);
        this.f4075c = executor;
        this.f4074b = new ArrayDeque();
    }

    public synchronized void a(Runnable runnable) {
        if (this.f4073a) {
            this.f4074b.add(runnable);
        } else {
            this.f4075c.execute(runnable);
        }
    }

    public synchronized void b(Runnable runnable) {
        this.f4074b.remove(runnable);
    }
}
