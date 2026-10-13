package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.g41;
import com.google.android.gms.internal.ads.l41;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class f21 extends t01<z01, g41, h41> {
    public f21() {
        super(z01.class, g41.class, h41.class, "type.googleapis.com/google.crypto.tink.HmacKey");
    }

    private static void a(k41 k41Var) {
        if (k41Var.m() >= 10) {
            int i2 = i21.f7212a[k41Var.k().ordinal()];
            if (i2 == 1) {
                if (k41Var.m() > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (i2 == 2) {
                if (k41Var.m() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else {
                if (i2 == 3) {
                    if (k41Var.m() > 64) {
                        throw new GeneralSecurityException("tag size too big");
                    }
                    return;
                }
                throw new GeneralSecurityException("unknown hash type");
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ g41 d(t71 t71Var) {
        return g41.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ h41 e(t71 t71Var) {
        return h41.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ g41 f(h41 h41Var) {
        h41 h41Var2 = h41Var;
        g41.a o = g41.o();
        o.a(0);
        o.a(h41Var2.m());
        o.a(t71.zzy(w61.a(h41Var2.k())));
        return (g41) o.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(g41 g41Var) {
        g41 g41Var2 = g41Var;
        a71.a(g41Var2.k(), 0);
        if (g41Var2.m().size() >= 16) {
            a(g41Var2.n());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void d(h41 h41Var) {
        h41 h41Var2 = h41Var;
        if (h41Var2.k() >= 16) {
            a(h41Var2.m());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ z01 e(g41 g41Var) {
        g41 g41Var2 = g41Var;
        e41 k2 = g41Var2.n().k();
        SecretKeySpec secretKeySpec = new SecretKeySpec(g41Var2.m().toByteArray(), "HMAC");
        int m = g41Var2.n().m();
        int i2 = i21.f7212a[k2.ordinal()];
        if (i2 == 1) {
            return new v61("HMACSHA1", secretKeySpec, m);
        }
        if (i2 == 2) {
            return new v61("HMACSHA256", secretKeySpec, m);
        }
        if (i2 == 3) {
            return new v61("HMACSHA512", secretKeySpec, m);
        }
        throw new GeneralSecurityException("unknown hash");
    }
}
