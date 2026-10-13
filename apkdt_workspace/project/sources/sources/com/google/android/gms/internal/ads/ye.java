package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ye implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ int f10545e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ int f10546f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ zzaxr f10547g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ye(zzaxr zzaxrVar, int i2, int i3) {
        this.f10547g = zzaxrVar;
        this.f10545e = i2;
        this.f10546f = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cfVar = this.f10547g.r;
        if (cfVar != null) {
            cfVar2 = this.f10547g.r;
            cfVar2.zzj(this.f10545e, this.f10546f);
        }
    }
}
