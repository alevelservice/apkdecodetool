package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class as0 implements hz0<r50> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ij0 f5658a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ yr0 f5659b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as0(yr0 yr0Var, ij0 ij0Var) {
        this.f5659b = yr0Var;
        this.f5658a = ij0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        zq0 zq0Var;
        synchronized (this.f5659b) {
            zq0Var = this.f5659b.f10639e;
            ((y50) zq0Var.a()).b().onAdFailedToLoad(t90.zzd(th));
            ct0.a(th, "RewardedAdLoader.onFailure");
            this.f5658a.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(r50 r50Var) {
        ar0 ar0Var;
        r50 r50Var2 = r50Var;
        synchronized (this.f5659b) {
            this.f5658a.a(r50Var2);
            ar0Var = this.f5659b.f10638d;
            ar0Var.a();
        }
    }
}
