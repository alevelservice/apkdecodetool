package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.f;

/* loaded from: classes.dex */
abstract class b extends f.a<Status> {
    public b(com.google.android.gms.common.api.f fVar) {
        super(fVar);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ com.google.android.gms.common.api.m a(Status status) {
        return status;
    }
}
