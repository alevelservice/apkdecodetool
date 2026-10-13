package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class gs0 implements ij0<r50> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzcuv f6968a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gs0(zzcuv zzcuvVar) {
        this.f6968a = zzcuvVar;
    }

    @Override // com.google.android.gms.internal.ads.ij0
    public final void a() {
        synchronized (this.f6968a) {
            this.f6968a.f11176h = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ij0
    public final /* synthetic */ void a(r50 r50Var) {
        r50 r50Var2;
        r50 r50Var3 = r50Var;
        synchronized (this.f6968a) {
            this.f6968a.f11176h = r50Var3;
            r50Var2 = this.f6968a.f11176h;
            r50Var2.c();
        }
    }
}
