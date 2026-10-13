package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.k51;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x11 {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final k51 f10249a;

    /* renamed from: b, reason: collision with root package name */
    public static final k51 f10250b;

    static {
        k51.a m = k51.m();
        m.a((k51.a) g11.f6773a);
        k51.a aVar = m;
        aVar.a(n01.a("TinkHybridDecrypt", "HybridDecrypt", "EciesAeadHkdfPrivateKey", 0, true));
        aVar.a(n01.a("TinkHybridEncrypt", "HybridEncrypt", "EciesAeadHkdfPublicKey", 0, true));
        aVar.a("TINK_HYBRID_1_0_0");
        f10249a = (k51) aVar.s();
        k51.a m2 = k51.m();
        m2.a((k51.a) f10249a);
        k51.a aVar2 = m2;
        aVar2.a("TINK_HYBRID_1_1_0");
        k51.a m3 = k51.m();
        m3.a((k51.a) g11.f6774b);
        k51.a aVar3 = m3;
        aVar3.a(n01.a("TinkHybridDecrypt", "HybridDecrypt", "EciesAeadHkdfPrivateKey", 0, true));
        aVar3.a(n01.a("TinkHybridEncrypt", "HybridEncrypt", "EciesAeadHkdfPublicKey", 0, true));
        aVar3.a("TINK_HYBRID");
        f10250b = (k51) aVar3.s();
        try {
            a();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void a() {
        g11.a();
        d11.a("TinkHybridEncrypt", new a21());
        d11.a("TinkHybridDecrypt", new w11());
        n01.a(f10250b);
    }
}
