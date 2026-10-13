package com.google.firebase.installations;

/* compiled from: FirebaseInstallations.java */
/* loaded from: classes.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final f f15054e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f15055f;

    private d(f fVar, boolean z) {
        this.f15054e = fVar;
        this.f15055f = z;
    }

    public static Runnable a(f fVar, boolean z) {
        return new d(fVar, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15054e.c(this.f15055f);
    }
}
