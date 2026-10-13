package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class am1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ yl1 f5617e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am1(yl1 yl1Var) {
        this.f5617e = yl1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        lm1 lm1Var;
        z = this.f5617e.L;
        if (z) {
            return;
        }
        lm1Var = this.f5617e.u;
        lm1Var.a((lm1) this.f5617e);
    }
}
