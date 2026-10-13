package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
final class zzl extends zzh {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ i f11322e;

    zzl(i iVar) {
        this.f11322e = iVar;
    }

    @Override // com.google.android.gms.internal.p000authapi.zzh, com.google.android.gms.internal.p000authapi.zzv
    public final void zzc(Status status, Credential credential) {
        this.f11322e.a((i) new h(status, credential));
    }

    @Override // com.google.android.gms.internal.p000authapi.zzh, com.google.android.gms.internal.p000authapi.zzv
    public final void zzd(Status status) {
        this.f11322e.a((i) h.a(status));
    }
}
