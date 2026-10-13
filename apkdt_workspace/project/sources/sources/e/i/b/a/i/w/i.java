package e.i.b.a.i.w;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.s;

/* compiled from: SchedulingModule_WorkSchedulerFactory.java */
/* loaded from: classes.dex */
public final class i implements com.google.android.datatransport.runtime.dagger.internal.b<s> {

    /* renamed from: a, reason: collision with root package name */
    private final javax.inject.a<Context> f17738a;

    /* renamed from: b, reason: collision with root package name */
    private final javax.inject.a<e.i.b.a.i.w.j.c> f17739b;

    /* renamed from: c, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> f17740c;

    /* renamed from: d, reason: collision with root package name */
    private final javax.inject.a<com.google.android.datatransport.runtime.time.a> f17741d;

    public i(javax.inject.a<Context> aVar, javax.inject.a<e.i.b.a.i.w.j.c> aVar2, javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> aVar3, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar4) {
        this.f17738a = aVar;
        this.f17739b = aVar2;
        this.f17740c = aVar3;
        this.f17741d = aVar4;
    }

    public static i a(javax.inject.a<Context> aVar, javax.inject.a<e.i.b.a.i.w.j.c> aVar2, javax.inject.a<com.google.android.datatransport.runtime.scheduling.jobscheduling.g> aVar3, javax.inject.a<com.google.android.datatransport.runtime.time.a> aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static s a(Context context, e.i.b.a.i.w.j.c cVar, com.google.android.datatransport.runtime.scheduling.jobscheduling.g gVar, com.google.android.datatransport.runtime.time.a aVar) {
        s a2 = h.a(context, cVar, gVar, aVar);
        com.google.android.datatransport.runtime.dagger.internal.d.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }

    @Override // javax.inject.a
    public s get() {
        return a(this.f17738a.get(), this.f17739b.get(), this.f17740c.get(), this.f17741d.get());
    }
}
