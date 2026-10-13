package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.s41;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class n01 {
    public static s41 a(String str, String str2, String str3, int i2, boolean z) {
        s41.a r = s41.r();
        r.a(str2);
        String valueOf = String.valueOf(str3);
        r.b(valueOf.length() != 0 ? "type.googleapis.com/google.crypto.tink.".concat(valueOf) : new String("type.googleapis.com/google.crypto.tink."));
        r.a(0);
        r.a(true);
        r.c(str);
        return (s41) r.s();
    }

    public static void a(k51 k51Var) {
        for (s41 s41Var : k51Var.k()) {
            if (!s41Var.k().isEmpty()) {
                if (!s41Var.m().isEmpty()) {
                    if (!s41Var.q().isEmpty()) {
                        o01<?> b2 = d11.b(s41Var.q());
                        d11.a((c11) b2.a());
                        d11.a(b2.a(s41Var.k(), s41Var.m(), s41Var.n()), s41Var.o());
                    } else {
                        throw new GeneralSecurityException("Missing catalogue_name.");
                    }
                } else {
                    throw new GeneralSecurityException("Missing primitive_name.");
                }
            } else {
                throw new GeneralSecurityException("Missing type_url.");
            }
        }
    }
}
