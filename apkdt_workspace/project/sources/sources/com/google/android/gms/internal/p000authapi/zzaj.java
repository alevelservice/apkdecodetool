package com.google.android.gms.internal.p000authapi;

import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.t;
import e.i.b.b.d.i;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
final class zzaj extends zzaa {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ i f11319e;

    zzaj(a aVar, i iVar) {
        this.f11319e = iVar;
    }

    @Override // com.google.android.gms.internal.p000authapi.zzab
    public final void zzc(Status status, BeginSignInResult beginSignInResult) {
        t.a(status, beginSignInResult, this.f11319e);
    }
}
