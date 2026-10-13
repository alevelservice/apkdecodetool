package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final x f14328e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.p.b f14329f;

    private l(x xVar, com.google.firebase.p.b bVar) {
        this.f14328e = xVar;
        this.f14329f = bVar;
    }

    public static Runnable a(x xVar, com.google.firebase.p.b bVar) {
        return new l(xVar, bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14328e.a(this.f14329f);
    }
}
