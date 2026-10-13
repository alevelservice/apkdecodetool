package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h11 implements o01<l01> {
    @Override // com.google.android.gms.internal.ads.o01
    public final u01<l01> a(String str, String str2, int i2) {
        u01<l01> k11Var;
        String lowerCase = str2.toLowerCase();
        char c2 = 65535;
        if (((lowerCase.hashCode() == 2989895 && lowerCase.equals("aead")) ? (char) 0 : (char) 65535) == 0) {
            switch (str.hashCode()) {
                case 245054116:
                    if (str.equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 360753376:
                    if (str.equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1215885937:
                    if (str.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1469984853:
                    if (str.equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1797113348:
                    if (str.equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1855890991:
                    if (str.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 2079211877:
                    if (str.equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    k11Var = new k11();
                    break;
                case 1:
                    k11Var = new l11();
                    break;
                case 2:
                    k11Var = new o11();
                    break;
                case 3:
                    k11Var = new n11();
                    break;
                case 4:
                    k11Var = new q11();
                    break;
                case 5:
                    k11Var = new s11();
                    break;
                case 6:
                    k11Var = new r11();
                    break;
                default:
                    throw new GeneralSecurityException(String.format("No support for primitive 'Aead' with key type '%s'.", str));
            }
            if (k11Var.getVersion() >= i2) {
                return k11Var;
            }
            throw new GeneralSecurityException(String.format("No key manager for key type '%s' with version at least %d.", str, Integer.valueOf(i2)));
        }
        throw new GeneralSecurityException(String.format("No support for primitive '%s'.", str2));
    }

    @Override // com.google.android.gms.internal.ads.o01
    public final c11<l01> a() {
        return new j11();
    }
}
