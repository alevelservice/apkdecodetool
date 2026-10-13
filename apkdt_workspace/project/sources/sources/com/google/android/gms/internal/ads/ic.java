package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ic implements iv1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f7265a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ mc f7266b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ic(gc gcVar, String str, mc mcVar) {
        this.f7265a = str;
        this.f7266b = mcVar;
    }

    @Override // com.google.android.gms.internal.ads.iv1
    public final void a(r0 r0Var) {
        String str = this.f7265a;
        String exc = r0Var.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(exc).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(exc);
        qd.d(sb.toString());
        this.f7266b.a((mc) null);
    }
}
