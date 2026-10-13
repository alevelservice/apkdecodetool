package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a80 implements ot, qu, sv {

    /* renamed from: e, reason: collision with root package name */
    private final f80 f5533e;

    /* renamed from: f, reason: collision with root package name */
    private final m80 f5534f;

    public a80(f80 f80Var, m80 m80Var) {
        this.f5533e = f80Var;
        this.f5534f = m80Var;
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(zzaok zzaokVar) {
        this.f5533e.a(zzaokVar.f10965e);
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(int i2) {
        this.f5534f.a(this.f5533e.a());
    }

    @Override // com.google.android.gms.internal.ads.qu
    public final void onAdLoaded() {
        this.f5534f.a(this.f5533e.a());
    }

    @Override // com.google.android.gms.internal.ads.sv
    public final void a(vs0 vs0Var) {
        this.f5533e.a(vs0Var);
    }
}
