package e.i.b.a.i;

/* compiled from: TransportRuntime_Factory.java */
/* loaded from: classes.dex */
public final class t implements com.google.android.datatransport.runtime.dagger.internal.b<r> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f17714a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f17715b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.w.e> f17716c;

    /* renamed from: d, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.m> f17717d;

    /* renamed from: e, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.q> f17718e;

    public t(javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar2, javax.inject.a<e.i.b.a.i.w.e> aVar3, javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.m> aVar4, javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.q> aVar5) {
        this.f17714a = aVar;
        this.f17715b = aVar2;
        this.f17716c = aVar3;
        this.f17717d = aVar4;
        this.f17718e = aVar5;
    }

    public static t a(javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar2, javax.inject.a<e.i.b.a.i.w.e> aVar3, javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.m> aVar4, javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.q> aVar5) {
        return new t(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static r a(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, e.i.b.a.i.w.e eVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.m mVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.q qVar) {
        return new r(aVar, aVar2, eVar, mVar, qVar);
    }

    @Override // javax.inject.a
    public r get() {
        return a(this.f17714a.get(), this.f17715b.get(), this.f17716c.get(), this.f17717d.get(), this.f17718e.get());
    }
}
