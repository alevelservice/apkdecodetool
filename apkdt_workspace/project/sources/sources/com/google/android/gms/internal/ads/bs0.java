package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class bs0 implements ij0<r50> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzcup f5855a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs0(zzcup zzcupVar) {
        this.f5855a = zzcupVar;
    }

    @Override // com.google.android.gms.internal.ads.ij0
    public final void a() {
        synchronized (this.f5855a) {
            this.f5855a.f11172i = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.ij0
    public final /* synthetic */ void a(r50 r50Var) {
        r50 r50Var2;
        r50 r50Var3 = r50Var;
        synchronized (this.f5855a) {
            this.f5855a.f11172i = r50Var3;
            r50Var2 = this.f5855a.f11172i;
            r50Var2.c();
        }
    }
}
