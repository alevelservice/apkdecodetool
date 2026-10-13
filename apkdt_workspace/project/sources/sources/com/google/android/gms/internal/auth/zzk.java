package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzk extends zzn {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ o f11346e;

    zzk(o oVar) {
        this.f11346e = oVar;
    }

    @Override // com.google.android.gms.internal.auth.zzn, com.google.android.gms.auth.account.zza
    public final void zzc(Account account) {
        Status status;
        o oVar = this.f11346e;
        if (account == null) {
            status = n.f11328a;
        } else {
            status = Status.f4988i;
        }
        oVar.a((o) new q(status, account));
    }
}
