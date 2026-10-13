package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.k51;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k21 {

    /* renamed from: a, reason: collision with root package name */
    @Deprecated
    public static final k51 f7602a;

    /* renamed from: b, reason: collision with root package name */
    public static final k51 f7603b;

    static {
        k51.a m = k51.m();
        m.a("TINK_MAC_1_0_0");
        m.a(n01.a("TinkMac", "Mac", "HmacKey", 0, true));
        f7602a = (k51) m.s();
        k51.a m2 = k51.m();
        m2.a((k51.a) f7602a);
        k51.a aVar = m2;
        aVar.a("TINK_MAC_1_1_0");
        k51.a m3 = k51.m();
        m3.a((k51.a) f7602a);
        k51.a aVar2 = m3;
        aVar2.a("TINK_MAC");
        f7603b = (k51) aVar2.s();
        try {
            a();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void a() {
        d11.a("TinkMac", new h21());
        n01.a(f7603b);
    }
}
