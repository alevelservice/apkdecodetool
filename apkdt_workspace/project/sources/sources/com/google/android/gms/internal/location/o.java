package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.f;

/* loaded from: classes.dex */
final class o extends f.a<LocationSettingsResult> {
    private final /* synthetic */ LocationSettingsRequest o;
    private final /* synthetic */ String p = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(n nVar, com.google.android.gms.common.api.f fVar, LocationSettingsRequest locationSettingsRequest, String str) {
        super(fVar);
        this.o = locationSettingsRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ com.google.android.gms.common.api.m a(Status status) {
        return new LocationSettingsResult(status);
    }

    @Override // com.google.android.gms.common.api.internal.d
    protected final /* synthetic */ void a(i iVar) {
        iVar.a(this.o, this, this.p);
    }
}
