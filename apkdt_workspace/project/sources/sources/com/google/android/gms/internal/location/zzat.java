package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzv;

/* loaded from: classes.dex */
final class zzat extends zzv {

    /* renamed from: e, reason: collision with root package name */
    private final com.google.android.gms.common.api.internal.k<com.google.android.gms.location.d> f11696e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(com.google.android.gms.common.api.internal.k<com.google.android.gms.location.d> kVar) {
        this.f11696e = kVar;
    }

    @Override // com.google.android.gms.location.zzu
    public final void onLocationAvailability(LocationAvailability locationAvailability) {
        this.f11696e.a(new g(this, locationAvailability));
    }

    @Override // com.google.android.gms.location.zzu
    public final void onLocationResult(LocationResult locationResult) {
        this.f11696e.a(new f(this, locationResult));
    }

    public final synchronized void release() {
        this.f11696e.a();
    }
}
