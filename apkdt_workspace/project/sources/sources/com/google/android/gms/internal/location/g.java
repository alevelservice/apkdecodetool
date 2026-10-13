package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.location.LocationAvailability;

/* loaded from: classes.dex */
final class g implements k.b<com.google.android.gms.location.d> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ LocationAvailability f11689a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(zzat zzatVar, LocationAvailability locationAvailability) {
        this.f11689a = locationAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.k.b
    public final void a() {
    }

    @Override // com.google.android.gms.common.api.internal.k.b
    public final /* synthetic */ void a(com.google.android.gms.location.d dVar) {
        dVar.a(this.f11689a);
    }
}
