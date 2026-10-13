package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ki0 implements oe1<hi0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ke0> f7700a;

    private ki0(af1<ke0> af1Var) {
        this.f7700a = af1Var;
    }

    public static ki0 a(af1<ke0> af1Var) {
        return new ki0(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new hi0(this.f7700a.get());
    }
}
