package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;

/* loaded from: classes.dex */
public final class n implements com.google.android.gms.location.i {
    @Override // com.google.android.gms.location.i
    public final com.google.android.gms.common.api.h<LocationSettingsResult> a(com.google.android.gms.common.api.f fVar, LocationSettingsRequest locationSettingsRequest) {
        return fVar.a((com.google.android.gms.common.api.f) new o(this, fVar, locationSettingsRequest, null));
    }
}
