package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.d;

/* compiled from: CctTransportBackend.java */
/* loaded from: classes.dex */
final /* synthetic */ class b implements e.i.b.a.i.v.a {

    /* renamed from: a, reason: collision with root package name */
    private final d f4241a;

    private b(d dVar) {
        this.f4241a = dVar;
    }

    public static e.i.b.a.i.v.a a(d dVar) {
        return new b(dVar);
    }

    @Override // e.i.b.a.i.v.a
    public Object apply(Object obj) {
        d.b a2;
        a2 = this.f4241a.a((d.a) obj);
        return a2;
    }
}
