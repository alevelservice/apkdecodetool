package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.LocationRequest;

@VisibleForTesting
/* loaded from: classes.dex */
public final class v implements com.google.android.gms.location.a {
    @Override // com.google.android.gms.location.a
    public final com.google.android.gms.common.api.h<Status> a(com.google.android.gms.common.api.f fVar, PendingIntent pendingIntent) {
        return fVar.b(new a(this, fVar, pendingIntent));
    }

    @Override // com.google.android.gms.location.a
    public final com.google.android.gms.common.api.h<Status> a(com.google.android.gms.common.api.f fVar, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return fVar.b(new w(this, fVar, locationRequest, pendingIntent));
    }
}
