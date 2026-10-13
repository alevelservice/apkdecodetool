package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class h21 implements o01<z01> {
    @Override // com.google.android.gms.internal.ads.o01
    public final u01<z01> a(String str, String str2, int i2) {
        String lowerCase = str2.toLowerCase();
        char c2 = 65535;
        if (((lowerCase.hashCode() == 107855 && lowerCase.equals("mac")) ? (char) 0 : (char) 65535) == 0) {
            if (str.hashCode() == 836622442 && str.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
                c2 = 0;
            }
            if (c2 == 0) {
                f21 f21Var = new f21();
                if (i2 <= 0) {
                    return f21Var;
                }
                throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
            }
            throw new GeneralSecurityException(String.format("No support for primitive 'Mac' with key type '%s'.", str));
        }
        throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
    }

    @Override // com.google.android.gms.internal.ads.o01
    public final c11<z01> a() {
        return new j21();
    }
}
