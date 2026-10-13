package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class aj0 implements hz0<py> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ lz f5580a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzclu f5581b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj0(zzclu zzcluVar, lz lzVar) {
        this.f5581b = zzcluVar;
        this.f5580a = lzVar;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        synchronized (this.f5581b) {
            zzclu.zza(this.f5581b, (qz0) null);
            this.f5580a.b().onAdFailedToLoad(t90.zzd(th));
            ct0.a(th, "InterstitialAdManagerShim.onFailure");
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(py pyVar) {
        py pyVar2 = pyVar;
        synchronized (this.f5581b) {
            zzclu.zza(this.f5581b, (qz0) null);
            this.f5581b.m = pyVar2;
            pyVar2.c();
        }
    }
}
