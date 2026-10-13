package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class cm0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f6067a;

    /* renamed from: b, reason: collision with root package name */
    private final Bundle f6068b;

    private cm0(String str, Bundle bundle) {
        this.f6067a = str;
        this.f6068b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.f6067a);
        bundle2.putBundle("iab_consent_info", this.f6068b);
    }
}
