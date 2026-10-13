package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class oy implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final fi f8604e;

    private oy(fi fiVar) {
        this.f8604e = fiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(fi fiVar) {
        return new oy(fiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8604e.destroy();
    }
}
