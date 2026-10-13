package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import com.google.android.gms.location.LocationRequest;

/* loaded from: classes.dex */
final class w extends b {
    private final /* synthetic */ LocationRequest o;
    private final /* synthetic */ PendingIntent p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(v vVar, com.google.android.gms.common.api.f fVar, LocationRequest locationRequest, PendingIntent pendingIntent) {
        super(fVar);
        this.o = locationRequest;
        this.p = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.d
    protected final /* synthetic */ void a(i iVar) {
        iVar.a(this.o, this.p, new zzac(this));
    }
}
