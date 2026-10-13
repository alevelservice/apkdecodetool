package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class km implements oe1<ud> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<String> f7721a;

    public km(af1<String> af1Var) {
        this.f7721a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ud udVar = new ud(this.f7721a.get());
        ue1.a(udVar, "Cannot return null from a non-@Nullable @Provides method");
        return udVar;
    }
}
