package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.j31;
import com.google.android.gms.internal.ads.l41;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class n11 extends t01<l01, j31, a41> {
    public n11() {
        super(l01.class, j31.class, a41.class, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ j31 d(t71 t71Var) {
        return j31.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* bridge */ /* synthetic */ void d(a41 a41Var) {
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ a41 e(t71 t71Var) {
        return a41.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ j31 f(a41 a41Var) {
        j31.a n = j31.n();
        n.a(0);
        n.a(t71.zzy(w61.a(32)));
        return (j31) n.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(j31 j31Var) {
        j31 j31Var2 = j31Var;
        a71.a(j31Var2.k(), 0);
        if (j31Var2.m().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ l01 e(j31 j31Var) {
        return new w51(j31Var.m().toByteArray());
    }
}
