package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ql0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final double f8958a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f8959b;

    public ql0(double d2, boolean z) {
        this.f8958a = d2;
        this.f8959b = z;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle a2 = dt0.a(bundle2, "device");
        bundle2.putBundle("device", a2);
        Bundle a3 = dt0.a(a2, "battery");
        a2.putBundle("battery", a3);
        a3.putBoolean("is_charging", this.f8959b);
        a3.putDouble("battery_level", this.f8958a);
    }
}
