package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class p2 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f8627e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ j2 f8628f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p2(j2 j2Var, String str) {
        this.f8628f = j2Var;
        this.f8627e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fi fiVar;
        fiVar = this.f8628f.f7408e;
        fiVar.loadUrl(this.f8627e);
    }
}
