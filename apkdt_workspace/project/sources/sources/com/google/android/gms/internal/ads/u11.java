package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class u11 extends t01<s01, u31, a41> {
    public u11() {
        super(s01.class, u31.class, a41.class, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.ASYMMETRIC_PUBLIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ u31 d(t71 t71Var) {
        return u31.c(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* bridge */ /* synthetic */ void d(a41 a41Var) {
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ a41 e(t71 t71Var) {
        return a41.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ u31 f(a41 a41Var) {
        throw new GeneralSecurityException("Not implemented.");
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(u31 u31Var) {
        u31 u31Var2 = u31Var;
        a71.a(u31Var2.k(), 0);
        e21.a(u31Var2.o());
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ s01 e(u31 u31Var) {
        u31 u31Var2 = u31Var;
        q31 o = u31Var2.o();
        y31 k2 = o.k();
        return new z51(f61.a(e21.a(k2.m()), u31Var2.m().toByteArray(), u31Var2.n().toByteArray()), k2.n().toByteArray(), e21.a(k2.k()), e21.a(o.n()), new g21(o.m().k()));
    }
}
