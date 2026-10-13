package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jr implements hz0<br> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ hz0 f7558a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ cr f7559b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jr(cr crVar, hz0 hz0Var) {
        this.f7559b = crVar;
        this.f7558a = hz0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        this.f7558a.a(th);
        this.f7559b.c();
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(br brVar) {
        this.f7559b.a(brVar.f5850a, this.f7558a);
    }
}
