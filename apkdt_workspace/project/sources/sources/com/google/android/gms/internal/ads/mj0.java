package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class mj0 implements hz0<sq> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ij0 f8146a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ f00 f8147b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ kj0 f8148c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mj0(kj0 kj0Var, ij0 ij0Var, f00 f00Var) {
        this.f8148c = kj0Var;
        this.f8146a = ij0Var;
        this.f8147b = f00Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        this.f8147b.b().onAdFailedToLoad(t90.zzd(th));
        ct0.a(th, "NativeAdLoader.onFailure");
        this.f8146a.a();
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(sq sqVar) {
        sq sqVar2 = sqVar;
        synchronized (this.f8148c) {
            this.f8146a.a(sqVar2);
        }
    }
}
