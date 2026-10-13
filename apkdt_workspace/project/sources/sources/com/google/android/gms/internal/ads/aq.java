package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class aq implements oe1<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ws0> f5643a;

    public aq(af1<ws0> af1Var) {
        this.f5643a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        boolean booleanValue;
        if (this.f5643a.get().a() != null) {
            booleanValue = ((Boolean) mu1.e().a(aw1.T0)).booleanValue();
        } else {
            booleanValue = ((Boolean) mu1.e().a(aw1.b3)).booleanValue();
        }
        return Boolean.valueOf(booleanValue);
    }
}
