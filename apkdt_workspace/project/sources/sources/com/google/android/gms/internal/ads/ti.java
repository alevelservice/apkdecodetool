package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ti implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzbbo f9580e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ti(zzbbo zzbboVar) {
        this.f9580e = zzbboVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fi fiVar;
        fiVar = this.f9580e.f11029e;
        fiVar.destroy();
    }
}
