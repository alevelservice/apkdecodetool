package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ze implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzaxr f10736e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ze(zzaxr zzaxrVar) {
        this.f10736e = zzaxrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cfVar = this.f10736e.r;
        if (cfVar != null) {
            cfVar2 = this.f10736e.r;
            cfVar2.onPaused();
        }
    }
}
