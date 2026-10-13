package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import e.i.b.a.i.x.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Uploader.java */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private final e.i.b.a.i.w.j.c f4423a;

    private k(e.i.b.a.i.w.j.c cVar) {
        this.f4423a = cVar;
    }

    public static b.a a(e.i.b.a.i.w.j.c cVar) {
        return new k(cVar);
    }

    @Override // e.i.b.a.i.x.b.a
    public Object execute() {
        return Integer.valueOf(this.f4423a.n());
    }
}
