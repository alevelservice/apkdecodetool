package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a10 implements oe1<ox<wt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<w20> f5497a;

    public a10(s00 s00Var, af1<w20> af1Var) {
        this.f5497a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5497a.get(), yd.f10544e);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
