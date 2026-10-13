package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fl0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f6671a = false;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f6672b = false;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f6673c;

    public fl0(boolean z, boolean z2, boolean z3) {
        this.f6673c = z3;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("c_pcbg", this.f6671a);
        bundle2.putBoolean("c_phbg", this.f6672b);
        bundle2.putBoolean("ar_lr", this.f6673c);
    }
}
