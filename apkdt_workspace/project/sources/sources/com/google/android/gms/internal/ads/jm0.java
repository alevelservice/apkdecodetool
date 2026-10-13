package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jm0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f7529a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f7530b;

    public jm0(String str, boolean z) {
        this.f7529a = str;
        this.f7530b = z;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.f7529a);
        if (this.f7530b) {
            bundle2.putString("de", "1");
        }
    }
}
