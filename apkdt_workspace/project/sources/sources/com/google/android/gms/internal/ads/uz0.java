package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class uz0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Runnable f9841e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ vz0 f9842f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public uz0(vz0 vz0Var, Runnable runnable) {
        this.f9842f = vz0Var;
        this.f9841e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9842f.f10005e = false;
        this.f9841e.run();
    }
}
