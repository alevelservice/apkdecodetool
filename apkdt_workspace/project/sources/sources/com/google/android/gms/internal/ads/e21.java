package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class e21 {
    public static void a(q31 q31Var) {
        f61.a(a(q31Var.k().m()));
        a(q31Var.k().k());
        if (q31Var.n() != k31.UNKNOWN_FORMAT) {
            d11.a(q31Var.m().k());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }

    public static String a(e41 e41Var) {
        int i2 = d21.f6146a[e41Var.ordinal()];
        if (i2 == 1) {
            return "HmacSha1";
        }
        if (i2 == 2) {
            return "HmacSha256";
        }
        if (i2 == 3) {
            return "HmacSha512";
        }
        String valueOf = String.valueOf(e41Var);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("hash unsupported for HMAC: ");
        sb.append(valueOf);
        throw new NoSuchAlgorithmException(sb.toString());
    }

    public static g61 a(z31 z31Var) {
        int i2 = d21.f6147b[z31Var.ordinal()];
        if (i2 == 1) {
            return g61.NIST_P256;
        }
        if (i2 == 2) {
            return g61.NIST_P384;
        }
        if (i2 == 3) {
            return g61.NIST_P521;
        }
        String valueOf = String.valueOf(z31Var);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
        sb.append("unknown curve type: ");
        sb.append(valueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    public static i61 a(k31 k31Var) {
        int i2 = d21.f6148c[k31Var.ordinal()];
        if (i2 == 1) {
            return i61.UNCOMPRESSED;
        }
        if (i2 == 2) {
            return i61.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i2 == 3) {
            return i61.COMPRESSED;
        }
        String valueOf = String.valueOf(k31Var);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("unknown point format: ");
        sb.append(valueOf);
        throw new GeneralSecurityException(sb.toString());
    }
}
