package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentRuntime.java */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final b0 f14326e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.p.b f14327f;

    private k(b0 b0Var, com.google.firebase.p.b bVar) {
        this.f14326e = b0Var;
        this.f14327f = bVar;
    }

    public static Runnable a(b0 b0Var, com.google.firebase.p.b bVar) {
        return new k(b0Var, bVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f14326e.a(this.f14327f);
    }
}
