package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.location.zzy;

/* loaded from: classes.dex */
final class zzax extends zzy {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.k<com.google.android.gms.location.e> f11697e;

    zzax(com.google.android.gms.common.api.internal.k<com.google.android.gms.location.e> kVar) {
        this.f11697e = kVar;
    }

    @Override // com.google.android.gms.location.zzx
    public final synchronized void onLocationChanged(Location location) {
        this.f11697e.a(new h(this, location));
    }

    public final synchronized void release() {
        this.f11697e.a();
    }
}
