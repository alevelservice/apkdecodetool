package com.google.firebase.installations;

/* compiled from: GetIdListener.java */
/* loaded from: classes.dex */
class k implements n {

    /* renamed from: a, reason: collision with root package name */
    final e.i.b.b.d.i<String> f15077a;

    public k(e.i.b.b.d.i<String> iVar) {
        this.f15077a = iVar;
    }

    @Override // com.google.firebase.installations.n
    public boolean a(com.google.firebase.installations.q.d dVar) {
        if (!dVar.k() && !dVar.j() && !dVar.h()) {
            return false;
        }
        this.f15077a.b((e.i.b.b.d.i<String>) dVar.c());
        return true;
    }

    @Override // com.google.firebase.installations.n
    public boolean a(Exception exc) {
        return false;
    }
}
