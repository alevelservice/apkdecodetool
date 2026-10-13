package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.Status;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class k extends m<Status> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(com.google.android.gms.common.api.f fVar) {
        super(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ com.google.android.gms.common.api.m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d
    protected final /* synthetic */ void a(h hVar) {
        h hVar2 = hVar;
        ((zzv) hVar2.u()).zze(new zzm(this), hVar2.B());
    }
}
