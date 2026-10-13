package com.google.android.gms.internal.location;

import android.app.PendingIntent;

/* loaded from: classes.dex */
final class a extends b {
    private final /* synthetic */ PendingIntent o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(v vVar, com.google.android.gms.common.api.f fVar, PendingIntent pendingIntent) {
        super(fVar);
        this.o = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.d
    protected final /* synthetic */ void a(i iVar) {
        iVar.a(this.o, new zzac(this));
    }
}
