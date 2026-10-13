package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class b3 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final h2 f5708e;

    private b3(h2 h2Var) {
        this.f5708e = h2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(h2 h2Var) {
        return new b3(h2Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5708e.destroy();
    }
}
