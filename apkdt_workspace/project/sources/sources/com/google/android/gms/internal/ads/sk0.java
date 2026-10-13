package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sk0 implements lo0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final zztx f9382a;

    public sk0(zztx zztxVar) {
        this.f9382a = zztxVar;
    }

    @Override // com.google.android.gms.internal.ads.lo0
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        zztx zztxVar = this.f9382a;
        if (zztxVar != null) {
            int i2 = zztxVar.f11254e;
            if (i2 == 1) {
                bundle2.putString("avo", "p");
            } else if (i2 == 2) {
                bundle2.putString("avo", "l");
            }
        }
    }
}
