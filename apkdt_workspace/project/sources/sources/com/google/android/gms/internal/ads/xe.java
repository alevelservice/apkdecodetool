package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xe implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzaxr f10325e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xe(zzaxr zzaxrVar) {
        this.f10325e = zzaxrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cf cfVar3;
        cfVar = this.f10325e.r;
        if (cfVar != null) {
            cfVar2 = this.f10325e.r;
            cfVar2.onPaused();
            cfVar3 = this.f10325e.r;
            cfVar3.zzwu();
        }
    }
}
