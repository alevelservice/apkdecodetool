package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mq implements oe1<jq> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ns0> f8208a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<rt> f8209b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<uu> f8210c;

    private mq(af1<ns0> af1Var, af1<rt> af1Var2, af1<uu> af1Var3) {
        this.f8208a = af1Var;
        this.f8209b = af1Var2;
        this.f8210c = af1Var3;
    }

    public static mq a(af1<ns0> af1Var, af1<rt> af1Var2, af1<uu> af1Var3) {
        return new mq(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new jq(this.f8208a.get(), this.f8209b.get(), this.f8210c.get());
    }
}
