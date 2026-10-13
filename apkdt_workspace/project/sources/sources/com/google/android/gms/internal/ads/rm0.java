package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rm0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final ks0 f9167a;

    public rm0(ks0 ks0Var) {
        this.f9167a = ks0Var;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        ks0 ks0Var = this.f9167a;
        if (ks0Var != null) {
            bundle2.putBoolean("render_in_browser", ks0Var.a());
            bundle2.putBoolean("disable_ml", this.f9167a.b());
        }
    }
}
