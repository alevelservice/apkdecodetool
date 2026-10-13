package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.concurrent.Executor;

/* compiled from: WorkInitializer_Factory.java */
/* loaded from: classes.dex */
public final class r implements com.google.android.datatransport.runtime.dagger.internal.b<q> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Executor> f4447a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.w.j.c> f4448b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<s> f4449c;

    /* renamed from: d, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.x.b> f4450d;

    public r(javax.inject.a<Executor> aVar, javax.inject.a<e.i.b.a.i.w.j.c> aVar2, javax.inject.a<s> aVar3, javax.inject.a<e.i.b.a.i.x.b> aVar4) {
        this.f4447a = aVar;
        this.f4448b = aVar2;
        this.f4449c = aVar3;
        this.f4450d = aVar4;
    }

    public static r a(javax.inject.a<Executor> aVar, javax.inject.a<e.i.b.a.i.w.j.c> aVar2, javax.inject.a<s> aVar3, javax.inject.a<e.i.b.a.i.x.b> aVar4) {
        return new r(aVar, aVar2, aVar3, aVar4);
    }

    public static q a(Executor executor, e.i.b.a.i.w.j.c cVar, s sVar, e.i.b.a.i.x.b bVar) {
        return new q(executor, cVar, sVar, bVar);
    }

    @Override // javax.inject.a
    public q get() {
        return a(this.f4447a.get(), this.f4448b.get(), this.f4449c.get(), this.f4450d.get());
    }
}
