package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nm0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final Bundle f8397a;

    public nm0(Bundle bundle) {
        this.f8397a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle a2 = dt0.a(bundle2, "device");
        a2.putBundle("android_mem_info", this.f8397a);
        bundle2.putBundle("device", a2);
    }
}
