package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class m2 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f8003e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ j2 f8004f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m2(j2 j2Var, String str) {
        this.f8004f = j2Var;
        this.f8003e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fi fiVar;
        fiVar = this.f8004f.f7408e;
        fiVar.loadData(this.f8003e, "text/html", "UTF-8");
    }
}
