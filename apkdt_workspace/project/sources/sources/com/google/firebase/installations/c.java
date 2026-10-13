package com.google.firebase.installations;

/* compiled from: FirebaseInstallations.java */
/* loaded from: classes.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final f f15053e;

    private c(f fVar) {
        this.f15053e = fVar;
    }

    public static Runnable a(f fVar) {
        return new c(fVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15053e.c(false);
    }
}
