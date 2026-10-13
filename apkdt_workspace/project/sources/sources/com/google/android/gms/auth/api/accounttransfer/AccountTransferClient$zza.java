package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzs;

/* loaded from: classes.dex */
class AccountTransferClient$zza<T> extends zzs {

    /* renamed from: e, reason: collision with root package name */
    private a<T> f4706e;

    public AccountTransferClient$zza(a<T> aVar) {
        this.f4706e = aVar;
    }

    @Override // com.google.android.gms.internal.auth.zzs, com.google.android.gms.internal.auth.zzx
    public final void onFailure(Status status) {
        this.f4706e.a(status);
        throw null;
    }
}
