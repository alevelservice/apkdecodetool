package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class ff implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final zzaya f6633e;

    private ff(zzaya zzayaVar) {
        this.f6633e = zzayaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(zzaya zzayaVar) {
        return new ff(zzayaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6633e.stop();
    }
}
