package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class f10 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final u10 f6551e;

    private f10(u10 u10Var) {
        this.f6551e = u10Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(u10 u10Var) {
        return new f10(u10Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6551e.b();
    }
}
