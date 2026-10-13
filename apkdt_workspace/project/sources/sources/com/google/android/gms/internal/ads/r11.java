package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l41;
import com.google.android.gms.internal.ads.m51;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class r11 extends t01<l01, m51, a41> {
    public r11() {
        super(l01.class, m51.class, a41.class, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ m51 d(t71 t71Var) {
        return m51.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* bridge */ /* synthetic */ void d(a41 a41Var) {
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ a41 e(t71 t71Var) {
        return a41.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ m51 f(a41 a41Var) {
        m51.a n = m51.n();
        n.a(0);
        n.a(t71.zzy(w61.a(32)));
        return (m51) n.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(m51 m51Var) {
        m51 m51Var2 = m51Var;
        a71.a(m51Var2.k(), 0);
        if (m51Var2.m().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ l01 e(m51 m51Var) {
        return new c71(m51Var.m().toByteArray());
    }
}
