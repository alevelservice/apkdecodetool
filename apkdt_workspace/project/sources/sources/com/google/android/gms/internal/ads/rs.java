package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rs implements oe1<kv> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<kv> f9222a;

    private rs(af1<kv> af1Var) {
        this.f9222a = af1Var;
    }

    public static rs a(af1<kv> af1Var) {
        return new rs(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        kv kvVar = this.f9222a.get();
        ue1.a(kvVar, "Cannot return null from a non-@Nullable @Provides method");
        return kvVar;
    }
}
