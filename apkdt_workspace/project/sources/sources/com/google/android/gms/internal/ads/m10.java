package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m10 implements oe1<j10> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zzbtn> f8002a;

    private m10(af1<zzbtn> af1Var) {
        this.f8002a = af1Var;
    }

    public static m10 a(af1<zzbtn> af1Var) {
        return new m10(af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new j10(this.f8002a.get());
    }
}
