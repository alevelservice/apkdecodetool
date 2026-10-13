package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.w41;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@Deprecated
/* loaded from: classes.dex */
public final class y01 {
    @Deprecated
    public static final v01 a(byte[] bArr) {
        try {
            w41 a2 = w41.a(bArr);
            a(a2);
            return v01.a(a2);
        } catch (o91 unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    private static void a(w41 w41Var) {
        for (w41.a aVar : w41Var.m()) {
            if (aVar.o().n() == l41.b.UNKNOWN_KEYMATERIAL || aVar.o().n() == l41.b.SYMMETRIC || aVar.o().n() == l41.b.ASYMMETRIC_PRIVATE) {
                throw new GeneralSecurityException("keyset contains secret key material");
            }
        }
    }
}
