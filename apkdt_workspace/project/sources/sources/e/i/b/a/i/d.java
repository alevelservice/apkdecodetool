package e.i.b.a.i;

import android.content.Context;
import e.i.b.a.i.s;
import e.i.b.a.i.w.j.b0;
import e.i.b.a.i.w.j.c0;
import e.i.b.a.i.w.j.h0;
import e.i.b.a.i.w.j.i0;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DaggerTransportRuntimeComponent.java */
/* loaded from: classes.dex */
public final class d extends s {

    /* renamed from: e, reason: collision with root package name */
    private javax.inject.a<Executor> f17686e;

    /* renamed from: f, reason: collision with root package name */
    private javax.inject.a<Context> f17687f;

    /* renamed from: g, reason: collision with root package name */
    private javax.inject.a f17688g;

    /* renamed from: h, reason: collision with root package name */
    private javax.inject.a f17689h;

    /* renamed from: i, reason: collision with root package name */
    private javax.inject.a f17690i;

    /* renamed from: j, reason: collision with root package name */
    private javax.inject.a<b0> f17691j;

    /* renamed from: k, reason: collision with root package name */
    private javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> f17692k;

    /* renamed from: l, reason: collision with root package name */
    private javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.s> f17693l;
    private javax.inject.a<e.i.b.a.i.w.c> m;
    private javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.m> n;
    private javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.q> o;
    private javax.inject.a<r> p;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerTransportRuntimeComponent.java */
    /* loaded from: classes.dex */
    public static final class b implements s.a {

        /* renamed from: a, reason: collision with root package name */
        private Context f17694a;

        private b() {
        }

        @Override // e.i.b.a.i.s.a
        public /* bridge */ /* synthetic */ s.a a(Context context) {
            a(context);
            return this;
        }

        @Override // e.i.b.a.i.s.a
        public b a(Context context) {
            com.google.android.datatransport.runtime.dagger.internal.d.a(context);
            this.f17694a = context;
            return this;
        }

        @Override // e.i.b.a.i.s.a
        public s a() {
            com.google.android.datatransport.runtime.dagger.internal.d.a(this.f17694a, (Class<Context>) Context.class);
            return new d(this.f17694a);
        }
    }

    private void a(Context context) {
        this.f17686e = com.google.android.datatransport.runtime.dagger.internal.a.a(j.a());
        this.f17687f = com.google.android.datatransport.runtime.dagger.internal.c.a(context);
        this.f17688g = com.google.android.datatransport.runtime.backends.k.a(this.f17687f, com.google.android.datatransport.runtime.time.c.a(), com.google.android.datatransport.runtime.time.d.a());
        this.f17689h = com.google.android.datatransport.runtime.dagger.internal.a.a(com.google.android.datatransport.runtime.backends.m.a(this.f17687f, (javax.inject.a<com.google.android.datatransport.runtime.backends.j>) this.f17688g));
        this.f17690i = i0.a(this.f17687f, e.i.b.a.i.w.j.f.a(), e.i.b.a.i.w.j.g.a());
        this.f17691j = com.google.android.datatransport.runtime.dagger.internal.a.a(c0.a(com.google.android.datatransport.runtime.time.c.a(), com.google.android.datatransport.runtime.time.d.a(), e.i.b.a.i.w.j.h.a(), (javax.inject.a<h0>) this.f17690i));
        this.f17692k = e.i.b.a.i.w.g.a(com.google.android.datatransport.runtime.time.c.a());
        this.f17693l = e.i.b.a.i.w.i.a(this.f17687f, this.f17691j, this.f17692k, com.google.android.datatransport.runtime.time.d.a());
        javax.inject.a<Executor> aVar = this.f17686e;
        javax.inject.a aVar2 = this.f17689h;
        javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.s> aVar3 = this.f17693l;
        javax.inject.a<b0> aVar4 = this.f17691j;
        this.m = e.i.b.a.i.w.d.a(aVar, (javax.inject.a<com.google.android.datatransport.runtime.backends.e>) aVar2, aVar3, aVar4, aVar4);
        javax.inject.a<Context> aVar5 = this.f17687f;
        javax.inject.a aVar6 = this.f17689h;
        javax.inject.a<b0> aVar7 = this.f17691j;
        this.n = com.google.android.datatransport.runtime.scheduling.jobscheduling.n.a(aVar5, (javax.inject.a<com.google.android.datatransport.runtime.backends.e>) aVar6, aVar7, this.f17693l, this.f17686e, aVar7, com.google.android.datatransport.runtime.time.c.a());
        javax.inject.a<Executor> aVar8 = this.f17686e;
        javax.inject.a<b0> aVar9 = this.f17691j;
        this.o = com.google.android.datatransport.runtime.scheduling.jobscheduling.r.a(aVar8, aVar9, this.f17693l, aVar9);
        this.p = com.google.android.datatransport.runtime.dagger.internal.a.a(t.a(com.google.android.datatransport.runtime.time.c.a(), com.google.android.datatransport.runtime.time.d.a(), this.m, this.n, this.o));
    }

    public static s.a k() {
        return new b();
    }

    @Override // e.i.b.a.i.s
    e.i.b.a.i.w.j.c i() {
        return this.f17691j.get();
    }

    @Override // e.i.b.a.i.s
    r j() {
        return this.p.get();
    }

    private d(Context context) {
        a(context);
    }
}
