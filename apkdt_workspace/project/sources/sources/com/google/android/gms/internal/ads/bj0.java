package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bj0 implements ij0<sq> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzclw f5780a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj0(zzclw zzclwVar) {
        this.f5780a = zzclwVar;
    }

    @Override // com.google.android.gms.internal.ads.ij0
    public final void a() {
        synchronized (this.f5780a) {
            zzclw.zza(this.f5780a, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.ij0
    public final /* synthetic */ void a(sq sqVar) {
        sq sqVar2 = sqVar;
        synchronized (this.f5780a) {
            zzclw.zza(this.f5780a, false);
            this.f5780a.f11164g = sqVar2.b();
            this.f5780a.f11165h = sqVar2.e();
            sqVar2.c();
        }
    }
}
