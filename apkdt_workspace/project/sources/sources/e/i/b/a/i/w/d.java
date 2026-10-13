package e.i.b.a.i.w;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;
import java.util.concurrent.Executor;

/* compiled from: DefaultScheduler_Factory.java */
/* loaded from: classes.dex */
public final class d implements com.google.android.datatransport.runtime.dagger.internal.b<c> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Executor> f17732a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.backends.e> f17733b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<s> f17734c;

    /* renamed from: d, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.w.j.c> f17735d;

    /* renamed from: e, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.x.b> f17736e;

    public d(javax.inject.a<Executor> aVar, javax.inject.a<com.google.android.datatransport.runtime.backends.e> aVar2, javax.inject.a<s> aVar3, javax.inject.a<e.i.b.a.i.w.j.c> aVar4, javax.inject.a<e.i.b.a.i.x.b> aVar5) {
        this.f17732a = aVar;
        this.f17733b = aVar2;
        this.f17734c = aVar3;
        this.f17735d = aVar4;
        this.f17736e = aVar5;
    }

    public static d a(javax.inject.a<Executor> aVar, javax.inject.a<com.google.android.datatransport.runtime.backends.e> aVar2, javax.inject.a<s> aVar3, javax.inject.a<e.i.b.a.i.w.j.c> aVar4, javax.inject.a<e.i.b.a.i.x.b> aVar5) {
        return new d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static c a(Executor executor, com.google.android.datatransport.runtime.backends.e eVar, s sVar, e.i.b.a.i.w.j.c cVar, e.i.b.a.i.x.b bVar) {
        return new c(executor, eVar, sVar, cVar, bVar);
    }

    @Override // javax.inject.a
    public c get() {
        return a(this.f17732a.get(), this.f17733b.get(), this.f17734c.get(), this.f17735d.get(), this.f17736e.get());
    }
}
