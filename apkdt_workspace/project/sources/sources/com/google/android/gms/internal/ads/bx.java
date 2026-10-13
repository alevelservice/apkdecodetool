package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bx implements oe1<zf0> {

    /* renamed from: a, reason: collision with root package name */
    private final hw f5877a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f5878b;

    private bx(hw hwVar, af1<com.google.android.gms.common.util.e> af1Var) {
        this.f5877a = hwVar;
        this.f5878b = af1Var;
    }

    public static bx a(hw hwVar, af1<com.google.android.gms.common.util.e> af1Var) {
        return new bx(hwVar, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zf0 a2 = this.f5877a.a(this.f5878b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
