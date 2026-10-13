package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jn0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final Bundle f7532a;

    public jn0(Bundle bundle) {
        this.f7532a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.f7532a;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
