package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationSettingsResult;

/* loaded from: classes.dex */
final class zzbc extends zzar {

    /* renamed from: e, reason: collision with root package name */
    private com.google.android.gms.common.api.internal.e<LocationSettingsResult> f11700e;

    public zzbc(com.google.android.gms.common.api.internal.e<LocationSettingsResult> eVar) {
        com.google.android.gms.common.internal.m.a(eVar != null, "listener can't be null.");
        this.f11700e = eVar;
    }

    @Override // com.google.android.gms.internal.location.zzaq
    public final void zza(LocationSettingsResult locationSettingsResult) {
        this.f11700e.a(locationSettingsResult);
        this.f11700e = null;
    }
}
