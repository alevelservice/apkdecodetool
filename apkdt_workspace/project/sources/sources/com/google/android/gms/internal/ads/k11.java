package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.n21;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class k11 extends t01<l01, n21, o21> {
    public k11() {
        super(l01.class, n21.class, o21.class, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        d11.a((u01) new m11());
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ n21 d(t71 t71Var) {
        return n21.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ o21 e(t71 t71Var) {
        return o21.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ n21 f(o21 o21Var) {
        o21 o21Var2 = o21Var;
        r21 r21Var = (r21) d11.a("type.googleapis.com/google.crypto.tink.AesCtrKey", o21Var2.k());
        g41 g41Var = (g41) d11.a("type.googleapis.com/google.crypto.tink.HmacKey", o21Var2.m());
        n21.a o = n21.o();
        o.a(r21Var);
        o.a(g41Var);
        o.a(0);
        return (n21) o.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(n21 n21Var) {
        a71.a(n21Var.k(), 0);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void d(o21 o21Var) {
        a71.a(o21Var.k().k());
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ l01 e(n21 n21Var) {
        n21 n21Var2 = n21Var;
        return new h61((t61) d11.a("type.googleapis.com/google.crypto.tink.AesCtrKey", n21Var2.m(), t61.class), (z01) d11.a("type.googleapis.com/google.crypto.tink.HmacKey", n21Var2.n(), z01.class), n21Var2.n().n().m());
    }
}
