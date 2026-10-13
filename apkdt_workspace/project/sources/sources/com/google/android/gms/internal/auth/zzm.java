package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzm extends zzn {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ p f11347e;

    zzm(p pVar) {
        this.f11347e = pVar;
    }

    @Override // com.google.android.gms.internal.auth.zzn, com.google.android.gms.auth.account.zza
    public final void zza(boolean z) {
        Status status;
        p pVar = this.f11347e;
        if (!z) {
            status = n.f11328a;
        } else {
            status = Status.f4988i;
        }
        pVar.a((p) new r(status));
    }
}
