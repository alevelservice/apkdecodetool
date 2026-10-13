package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class te implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzaxr f9558e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public te(zzaxr zzaxrVar) {
        this.f9558e = zzaxrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cfVar = this.f9558e.r;
        if (cfVar != null) {
            cfVar2 = this.f9558e.r;
            cfVar2.zzwt();
        }
    }
}
