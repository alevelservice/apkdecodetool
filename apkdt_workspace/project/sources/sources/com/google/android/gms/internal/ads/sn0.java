package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sn0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f9406a;

    public sn0(String str) {
        this.f9406a = str;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        bundle.putString("rtb", this.f9406a);
    }
}
