package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.k51;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g11 {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final k51 f6773a;

    /* renamed from: b, reason: collision with root package name */
    public static final k51 f6774b;

    static {
        k51.a m = k51.m();
        m.a((k51.a) k21.f7602a);
        k51.a aVar = m;
        aVar.a(n01.a("TinkAead", "Aead", "AesCtrHmacAeadKey", 0, true));
        aVar.a(n01.a("TinkAead", "Aead", "AesEaxKey", 0, true));
        aVar.a(n01.a("TinkAead", "Aead", "AesGcmKey", 0, true));
        aVar.a(n01.a("TinkAead", "Aead", "ChaCha20Poly1305Key", 0, true));
        aVar.a(n01.a("TinkAead", "Aead", "KmsAeadKey", 0, true));
        aVar.a(n01.a("TinkAead", "Aead", "KmsEnvelopeAeadKey", 0, true));
        aVar.a("TINK_AEAD_1_0_0");
        f6773a = (k51) aVar.s();
        k51.a m2 = k51.m();
        m2.a((k51.a) f6773a);
        k51.a aVar2 = m2;
        aVar2.a("TINK_AEAD_1_1_0");
        k51.a m3 = k51.m();
        m3.a((k51.a) k21.f7603b);
        k51.a aVar3 = m3;
        aVar3.a(n01.a("TinkAead", "Aead", "AesCtrHmacAeadKey", 0, true));
        aVar3.a(n01.a("TinkAead", "Aead", "AesEaxKey", 0, true));
        aVar3.a(n01.a("TinkAead", "Aead", "AesGcmKey", 0, true));
        aVar3.a(n01.a("TinkAead", "Aead", "ChaCha20Poly1305Key", 0, true));
        aVar3.a(n01.a("TinkAead", "Aead", "KmsAeadKey", 0, true));
        aVar3.a(n01.a("TinkAead", "Aead", "KmsEnvelopeAeadKey", 0, true));
        aVar3.a(n01.a("TinkAead", "Aead", "XChaCha20Poly1305Key", 0, true));
        aVar3.a("TINK_AEAD");
        f6774b = (k51) aVar3.s();
        try {
            a();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void a() {
        k21.a();
        d11.a("TinkAead", new h11());
        n01.a(f6774b);
    }
}
