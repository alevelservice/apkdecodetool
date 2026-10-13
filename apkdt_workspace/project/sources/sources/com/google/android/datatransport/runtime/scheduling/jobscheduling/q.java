package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import java.util.Iterator;
import java.util.concurrent.Executor;
import javax.inject.Inject;

/* compiled from: WorkInitializer.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4443a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.a.i.w.j.c f4444b;

    /* renamed from: c, reason: collision with root package name */
    private final s f4445c;

    /* renamed from: d, reason: collision with root package name */
    private final e.i.b.a.i.x.b f4446d;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public q(Executor executor, e.i.b.a.i.w.j.c cVar, s sVar, e.i.b.a.i.x.b bVar) {
        this.f4443a = executor;
        this.f4444b = cVar;
        this.f4445c = sVar;
        this.f4446d = bVar;
    }

    public void a() {
        this.f4443a.execute(o.a(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(q qVar) {
        Iterator<e.i.b.a.i.m> it = qVar.f4444b.y().iterator();
        while (it.hasNext()) {
            qVar.f4445c.a(it.next(), 1);
        }
        return null;
    }
}
