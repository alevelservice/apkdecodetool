package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.y21;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class l11 extends t01<l01, y21, z21> {
    public l11() {
        super(l01.class, y21.class, z21.class, "type.googleapis.com/google.crypto.tink.AesEaxKey");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ y21 d(t71 t71Var) {
        return y21.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ z21 e(t71 t71Var) {
        return z21.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ y21 f(z21 z21Var) {
        z21 z21Var2 = z21Var;
        y21.a o = y21.o();
        o.a(t71.zzy(w61.a(z21Var2.k())));
        o.a(z21Var2.m());
        o.a(0);
        return (y21) o.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(y21 y21Var) {
        y21 y21Var2 = y21Var;
        a71.a(y21Var2.k(), 0);
        a71.a(y21Var2.m().size());
        if (y21Var2.n().k() != 12 && y21Var2.n().k() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void d(z21 z21Var) {
        z21 z21Var2 = z21Var;
        a71.a(z21Var2.k());
        if (z21Var2.m().k() != 12 && z21Var2.m().k() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ l01 e(y21 y21Var) {
        y21 y21Var2 = y21Var;
        return new p51(y21Var2.m().toByteArray(), y21Var2.n().k());
    }
}
