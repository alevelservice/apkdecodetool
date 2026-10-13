package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class pe0 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final u60 f8688e;

    private pe0(u60 u60Var) {
        this.f8688e = u60Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(u60 u60Var) {
        return new pe0(u60Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8688e.a();
    }
}
