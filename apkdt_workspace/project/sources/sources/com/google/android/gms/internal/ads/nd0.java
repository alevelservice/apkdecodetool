package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class nd0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final fi f8322e;

    private nd0(fi fiVar) {
        this.f8322e = fiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(fi fiVar) {
        return new nd0(fiVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8322e.zzzl();
    }
}
