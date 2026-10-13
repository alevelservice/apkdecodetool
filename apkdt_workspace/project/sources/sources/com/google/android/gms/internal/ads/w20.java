package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w20 implements wt {

    /* renamed from: e, reason: collision with root package name */
    private final l10 f10020e;

    /* renamed from: f, reason: collision with root package name */
    private final q10 f10021f;

    public w20(l10 l10Var, q10 q10Var) {
        this.f10020e = l10Var;
        this.f10021f = q10Var;
    }

    @Override // com.google.android.gms.internal.ads.wt
    public final void onAdImpression() {
        if (this.f10020e.v() == null) {
            return;
        }
        fi u = this.f10020e.u();
        fi t = this.f10020e.t();
        if (u == null) {
            u = t != null ? t : null;
        }
        if (!this.f10021f.a() || u == null) {
            return;
        }
        u.zza("onSdkImpression", new a.e.a());
    }
}
