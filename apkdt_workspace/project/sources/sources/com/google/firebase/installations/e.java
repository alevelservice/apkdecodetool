package com.google.firebase.installations;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseInstallations.java */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final f f15056e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f15057f;

    private e(f fVar, boolean z) {
        this.f15056e = fVar;
        this.f15057f = z;
    }

    public static Runnable a(f fVar, boolean z) {
        return new e(fVar, z);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f15056e.b(this.f15057f);
    }
}
