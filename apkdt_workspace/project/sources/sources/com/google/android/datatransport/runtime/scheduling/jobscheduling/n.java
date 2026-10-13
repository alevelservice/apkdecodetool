package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: Uploader_Factory.java */
/* loaded from: classes.dex */
public final class n implements com.google.android.datatransport.runtime.dagger.internal.b<m> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Context> f4434a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.backends.e> f4435b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.w.j.c> f4436c;

    /* renamed from: d, reason: collision with root package name */
    private final javax.inject.a<s> f4437d;

    /* renamed from: e, reason: collision with root package name */
    private final javax.inject.a<Executor> f4438e;

    /* renamed from: f, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.x.b> f4439f;

    /* renamed from: g, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f4440g;

    public n(javax.inject.a<Context> aVar, javax.inject.a<com.google.android.datatransport.runtime.backends.e> aVar2, javax.inject.a<e.i.b.a.i.w.j.c> aVar3, javax.inject.a<s> aVar4, javax.inject.a<Executor> aVar5, javax.inject.a<e.i.b.a.i.x.b> aVar6, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar7) {
        this.f4434a = aVar;
        this.f4435b = aVar2;
        this.f4436c = aVar3;
        this.f4437d = aVar4;
        this.f4438e = aVar5;
        this.f4439f = aVar6;
        this.f4440g = aVar7;
    }

    public static n a(javax.inject.a<Context> aVar, javax.inject.a<com.google.android.datatransport.runtime.backends.e> aVar2, javax.inject.a<e.i.b.a.i.w.j.c> aVar3, javax.inject.a<s> aVar4, javax.inject.a<Executor> aVar5, javax.inject.a<e.i.b.a.i.x.b> aVar6, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar7) {
        return new n(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    public static m a(Context context, com.google.android.datatransport.runtime.backends.e eVar, e.i.b.a.i.w.j.c cVar, s sVar, Executor executor, e.i.b.a.i.x.b bVar, com.google.android.datatransport.runtime.time.a aVar) {
        return new m(context, eVar, cVar, sVar, executor, bVar, aVar);
    }

    @Override // javax.inject.a
    public m get() {
        return a(this.f4434a.get(), this.f4435b.get(), this.f4436c.get(), this.f4437d.get(), this.f4438e.get(), this.f4439f.get(), this.f4440g.get());
    }
}
