package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ve implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzaxr f9898e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ve(zzaxr zzaxrVar) {
        this.f9898e = zzaxrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cfVar = this.f9898e.r;
        if (cfVar != null) {
            cfVar2 = this.f9898e.r;
            cfVar2.zzwr();
        }
    }
}
