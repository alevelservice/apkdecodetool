package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.t31;
import com.google.android.gms.internal.ads.u31;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class v11 extends t01<r01, t31, p31> implements u01<r01> {
    public v11() {
        super(r01.class, t31.class, p31.class, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ t31 d(t71 t71Var) {
        return t31.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ p31 e(t71 t71Var) {
        return p31.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ t31 f(p31 p31Var) {
        p31 p31Var2 = p31Var;
        KeyPair a2 = f61.a(f61.a(e21.a(p31Var2.k().k().m())));
        ECPublicKey eCPublicKey = (ECPublicKey) a2.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) a2.getPrivate();
        ECPoint w = eCPublicKey.getW();
        u31.a q = u31.q();
        q.a(0);
        q.a(p31Var2.k());
        q.a(t71.zzy(w.getAffineX().toByteArray()));
        q.b(t71.zzy(w.getAffineY().toByteArray()));
        u31 u31Var = (u31) q.s();
        t31.a o = t31.o();
        o.a(0);
        o.a(u31Var);
        o.a(t71.zzy(eCPrivateKey.getS().toByteArray()));
        return (t31) o.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(t31 t31Var) {
        t31 t31Var2 = t31Var;
        if (!(t31Var2.m().size() == 0)) {
            a71.a(t31Var2.k(), 0);
            e21.a(t31Var2.n().o());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void d(p31 p31Var) {
        e21.a(p31Var.k());
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ r01 e(t31 t31Var) {
        t31 t31Var2 = t31Var;
        q31 o = t31Var2.n().o();
        y31 k2 = o.k();
        return new a61(f61.a(e21.a(k2.m()), t31Var2.m().toByteArray()), k2.n().toByteArray(), e21.a(k2.k()), e21.a(o.n()), new g21(o.m().k()));
    }
}
