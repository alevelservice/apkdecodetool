package com.google.firebase.installations;

import com.google.firebase.installations.l;

/* compiled from: GetAuthTokenListener.java */
/* loaded from: classes.dex */
class j implements n {

    /* renamed from: a, reason: collision with root package name */
    private final o f15075a;

    /* renamed from: b, reason: collision with root package name */
    private final e.i.b.b.d.i<l> f15076b;

    public j(o oVar, e.i.b.b.d.i<l> iVar) {
        this.f15075a = oVar;
        this.f15076b = iVar;
    }

    @Override // com.google.firebase.installations.n
    public boolean a(com.google.firebase.installations.q.d dVar) {
        if (!dVar.j() || this.f15075a.a(dVar)) {
            return false;
        }
        e.i.b.b.d.i<l> iVar = this.f15076b;
        l.a d2 = l.d();
        d2.a(dVar.a());
        d2.b(dVar.b());
        d2.a(dVar.g());
        iVar.a((e.i.b.b.d.i<l>) d2.a());
        return true;
    }

    @Override // com.google.firebase.installations.n
    public boolean a(Exception exc) {
        this.f15076b.b(exc);
        return true;
    }
}
