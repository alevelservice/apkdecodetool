package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class em0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final Bundle f6463a;

    public em0(Bundle bundle) {
        this.f6463a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        bundle.putBundle("content_info", this.f6463a);
    }
}
