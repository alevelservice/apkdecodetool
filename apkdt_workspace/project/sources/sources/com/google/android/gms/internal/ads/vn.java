package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vn implements oe1<l4> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c4> f9956a;

    private vn(af1<c4> af1Var) {
        this.f9956a = af1Var;
    }

    public static vn a(af1<c4> af1Var) {
        return new vn(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        l4 a2 = this.f9956a.get().a();
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
