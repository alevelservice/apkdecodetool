package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class n2 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f8261e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ j2 f8262f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n2(j2 j2Var, String str) {
        this.f8262f = j2Var;
        this.f8261e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fi fiVar;
        fiVar = this.f8262f.f7408e;
        fiVar.loadData(this.f8261e, "text/html", "UTF-8");
    }
}
