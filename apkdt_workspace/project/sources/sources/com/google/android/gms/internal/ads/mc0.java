package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mc0 implements fv0 {

    /* renamed from: e, reason: collision with root package name */
    private final kc0 f8076e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mc0(kc0 kc0Var) {
        this.f8076e = kc0Var;
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str, Throwable th) {
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue() && wu0.RENDERER == wu0Var && this.f8076e.c() != 0) {
            this.f8076e.b(com.google.android.gms.ads.internal.n.j().c() - this.f8076e.c());
        }
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void b(wu0 wu0Var, String str) {
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue() && wu0.RENDERER == wu0Var) {
            this.f8076e.c(com.google.android.gms.ads.internal.n.j().c());
        }
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void c(wu0 wu0Var, String str) {
    }

    @Override // com.google.android.gms.internal.ads.fv0
    public final void a(wu0 wu0Var, String str) {
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue() && wu0.RENDERER == wu0Var && this.f8076e.c() != 0) {
            this.f8076e.b(com.google.android.gms.ads.internal.n.j().c() - this.f8076e.c());
        }
    }
}
