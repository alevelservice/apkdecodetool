package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.r21;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class m11 extends t01<t61, r21, u21> {
    public m11() {
        super(t61.class, r21.class, u21.class, "type.googleapis.com/google.crypto.tink.AesCtrKey");
    }

    private static void a(v21 v21Var) {
        if (v21Var.k() < 12 || v21Var.k() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ r21 d(t71 t71Var) {
        return r21.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ u21 e(t71 t71Var) {
        return u21.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ r21 f(u21 u21Var) {
        u21 u21Var2 = u21Var;
        r21.a o = r21.o();
        o.a(u21Var2.m());
        o.a(t71.zzy(w61.a(u21Var2.k())));
        o.a(0);
        return (r21) o.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(r21 r21Var) {
        r21 r21Var2 = r21Var;
        a71.a(r21Var2.k(), 0);
        a71.a(r21Var2.m().size());
        a(r21Var2.n());
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void d(u21 u21Var) {
        u21 u21Var2 = u21Var;
        a71.a(u21Var2.k());
        a(u21Var2.m());
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ t61 e(r21 r21Var) {
        r21 r21Var2 = r21Var;
        return new q51(r21Var2.m().toByteArray(), r21Var2.n().k());
    }
}
