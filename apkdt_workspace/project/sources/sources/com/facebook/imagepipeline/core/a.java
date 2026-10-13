package com.facebook.imagepipeline.core;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: DefaultExecutorSupplier.java */
/* loaded from: classes.dex */
public class a implements e {

    /* renamed from: b, reason: collision with root package name */
    private final Executor f3683b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f3684c;

    /* renamed from: a, reason: collision with root package name */
    private final Executor f3682a = Executors.newFixedThreadPool(2, new k(10, "FrescoIoBoundExecutor", true));

    /* renamed from: d, reason: collision with root package name */
    private final Executor f3685d = Executors.newFixedThreadPool(1, new k(10, "FrescoLightWeightBackgroundExecutor", true));

    public a(int i2) {
        this.f3683b = Executors.newFixedThreadPool(i2, new k(10, "FrescoDecodeExecutor", true));
        this.f3684c = Executors.newFixedThreadPool(i2, new k(10, "FrescoBackgroundExecutor", true));
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor a() {
        return this.f3683b;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor b() {
        return this.f3685d;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor c() {
        return this.f3684c;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor d() {
        return this.f3682a;
    }

    @Override // com.facebook.imagepipeline.core.e
    public Executor e() {
        return this.f3682a;
    }
}
