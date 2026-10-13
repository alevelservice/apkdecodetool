package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzs;

/* loaded from: classes.dex */
final class zzk extends zzs {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ b f4713e;

    zzk(b bVar) {
        this.f4713e = bVar;
    }

    @Override // com.google.android.gms.internal.auth.zzs, com.google.android.gms.internal.auth.zzx
    public final void onFailure(Status status) {
        this.f4713e.a(status);
    }

    @Override // com.google.android.gms.internal.auth.zzs, com.google.android.gms.internal.auth.zzx
    public final void zzd() {
        this.f4713e.a((b) null);
    }
}
