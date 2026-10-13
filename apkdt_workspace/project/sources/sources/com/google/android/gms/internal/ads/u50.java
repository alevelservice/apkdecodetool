package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class u50 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final fi f9681e;

    private u50(fi fiVar) {
        this.f9681e = fiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(fi fiVar) {
        return new u50(fiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9681e.destroy();
    }
}
