package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.e;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
final class zzp extends zzh {

    /* renamed from: e, reason: collision with root package name */
    private e<Status> f11323e;

    zzp(e<Status> eVar) {
        this.f11323e = eVar;
    }

    @Override // com.google.android.gms.internal.p000authapi.zzh, com.google.android.gms.internal.p000authapi.zzv
    public final void zzd(Status status) {
        this.f11323e.a(status);
    }
}
