package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [O] */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class uu0<O> implements hz0<O> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ hu0 f9814a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ru0 f9815b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public uu0(ru0 ru0Var, hu0 hu0Var) {
        this.f9815b = ru0Var;
        this.f9814a = hu0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(O o) {
        xu0 xu0Var;
        xu0Var = this.f9815b.f9238f.f7757c;
        xu0Var.a(this.f9814a);
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        xu0 xu0Var;
        xu0Var = this.f9815b.f9238f.f7757c;
        xu0Var.a(this.f9814a, th);
    }
}
