package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class af implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzaxr f5565e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(zzaxr zzaxrVar) {
        this.f5565e = zzaxrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cf cfVar;
        cf cfVar2;
        cfVar = this.f5565e.r;
        if (cfVar != null) {
            cfVar2 = this.f5565e.r;
            cfVar2.zzws();
        }
    }
}
