package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import e.i.b.a.i.x.b;

/* compiled from: WorkInitializer.java */
/* loaded from: classes.dex */
final /* synthetic */ class p implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private final q f4442a;

    private p(q qVar) {
        this.f4442a = qVar;
    }

    public static b.a a(q qVar) {
        return new p(qVar);
    }

    @Override // e.i.b.a.i.x.b.a
    public Object execute() {
        return q.a(this.f4442a);
    }
}
