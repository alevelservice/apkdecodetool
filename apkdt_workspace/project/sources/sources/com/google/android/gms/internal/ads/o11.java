package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.e31;
import com.google.android.gms.internal.ads.l41;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class o11 extends t01<l01, e31, f31> {
    public o11() {
        super(l01.class, e31.class, f31.class, "type.googleapis.com/google.crypto.tink.AesGcmKey");
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final l41.b c() {
        return l41.b.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ e31 d(t71 t71Var) {
        return e31.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ f31 e(t71 t71Var) {
        return f31.a(t71Var);
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ e31 f(f31 f31Var) {
        e31.a n = e31.n();
        n.a(t71.zzy(w61.a(f31Var.k())));
        n.a(0);
        return (e31) n.s();
    }

    @Override // com.google.android.gms.internal.ads.u01
    public final int getVersion() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void c(e31 e31Var) {
        e31 e31Var2 = e31Var;
        a71.a(e31Var2.k(), 0);
        a71.a(e31Var2.m().size());
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ void d(f31 f31Var) {
        a71.a(f31Var.k());
    }

    @Override // com.google.android.gms.internal.ads.t01
    protected final /* synthetic */ l01 e(e31 e31Var) {
        return new r51(e31Var.m().toByteArray());
    }
}
