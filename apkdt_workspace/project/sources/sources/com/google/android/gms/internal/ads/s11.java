package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e51;
import com.google.android.gms.internal.ads.l41;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class s11 extends t01<l01, e51, f51> {
    public s11() {
        super(l01.class, e51.class, f51.class, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.REMOTE;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ e51 d(t71 t71Var) {
        return e51.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* bridge */ /* synthetic */ void d(f51 f51Var) {
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ f51 e(t71 t71Var) {
        return f51.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ e51 f(f51 f51Var) {
        e51.a n = e51.n();
        n.a(f51Var);
        n.a(0);
        return (e51) n.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(e51 e51Var) {
        a71.a(e51Var.k(), 0);
    }

    @Override // com.google.android.gms.internal.ads.t01
    public final /* synthetic */ l01 e(e51 e51Var) {
        e51 e51Var2 = e51Var;
        String k2 = e51Var2.m().k();
        return new p11(e51Var2.m().m(), w01.a(k2).a(k2));
    }
}
