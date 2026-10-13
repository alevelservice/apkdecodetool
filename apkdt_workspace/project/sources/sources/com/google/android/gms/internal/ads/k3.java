package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k3 implements le<p3> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ i3 f7604a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k3(i3 i3Var) {
        this.f7604a = i3Var;
    }

    @Override // com.google.android.gms.internal.ads.le
    public final /* synthetic */ void b(p3 p3Var) {
        m3 m3Var;
        na.e("Releasing engine reference.");
        m3Var = this.f7604a.f7214d;
        m3Var.d();
    }
}
