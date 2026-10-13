package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class w2 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final h2 f10019e;

    private w2(h2 h2Var) {
        this.f10019e = h2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(h2 h2Var) {
        return new w2(h2Var);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10019e.destroy();
    }
}
