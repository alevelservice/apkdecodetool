package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.w41;
import com.google.android.gms.internal.ads.x41;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class f11 {
    static {
        Charset.forName("UTF-8");
    }

    public static x41 a(w41 w41Var) {
        x41.a k2 = x41.k();
        k2.a(w41Var.k());
        for (w41.a aVar : w41Var.m()) {
            x41.b.a k3 = x41.b.k();
            k3.a(aVar.o().k());
            k3.a(aVar.k());
            k3.a(aVar.m());
            k3.a(aVar.q());
            k2.a((x41.b) k3.s());
        }
        return (x41) k2.s();
    }

    public static void b(w41 w41Var) {
        int k2 = w41Var.k();
        int i2 = 0;
        boolean z = false;
        boolean z2 = true;
        for (w41.a aVar : w41Var.m()) {
            if (aVar.k() == p41.ENABLED) {
                if (aVar.n()) {
                    if (aVar.m() != i51.UNKNOWN_PREFIX) {
                        if (aVar.k() != p41.UNKNOWN_STATUS) {
                            if (aVar.q() == k2) {
                                if (z) {
                                    throw new GeneralSecurityException("keyset contains multiple primary keys");
                                }
                                z = true;
                            }
                            if (aVar.o().n() != l41.b.ASYMMETRIC_PUBLIC) {
                                z2 = false;
                            }
                            i2++;
                        } else {
                            throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(aVar.q())));
                        }
                    } else {
                        throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(aVar.q())));
                    }
                } else {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(aVar.q())));
                }
            }
        }
        if (i2 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
