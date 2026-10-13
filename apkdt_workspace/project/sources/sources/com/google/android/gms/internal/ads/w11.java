package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class w11 implements o01<r01> {
    @Override // com.google.android.gms.internal.ads.o01
    public final u01<r01> a(String str, String str2, int i2) {
        String lowerCase = str2.toLowerCase();
        char c2 = 65535;
        if (((lowerCase.hashCode() == 275448849 && lowerCase.equals("hybriddecrypt")) ? (char) 0 : (char) 65535) == 0) {
            if (str.hashCode() == -80133005 && str.equals("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")) {
                c2 = 0;
            }
            if (c2 == 0) {
                v11 v11Var = new v11();
                if (i2 <= 0) {
                    return v11Var;
                }
                throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
            }
            throw new GeneralSecurityException(String.format("No support for primitive 'HybridEncrypt' with key type '%s'.", str));
        }
        throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
    }

    @Override // com.google.android.gms.internal.ads.o01
    public final c11<r01> a() {
        return new y11();
    }
}
