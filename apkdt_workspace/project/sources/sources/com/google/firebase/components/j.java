package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements com.google.firebase.p.b {

    /* renamed from: a, reason: collision with root package name */
    private final n f14324a;

    /* renamed from: b, reason: collision with root package name */
    private final d f14325b;

    private j(n nVar, d dVar) {
        this.f14324a = nVar;
        this.f14325b = dVar;
    }

    public static com.google.firebase.p.b a(n nVar, d dVar) {
        return new j(nVar, dVar);
    }

    @Override // com.google.firebase.p.b
    public Object get() {
        Object a2;
        a2 = r1.b().a(new d0(this.f14325b, this.f14324a));
        return a2;
    }
}
