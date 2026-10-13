package com.google.android.gms.internal.auth;

import android.accounts.Account;
import com.google.android.gms.auth.account.a;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class q implements a.InterfaceC0081a {

    /* renamed from: e, reason: collision with root package name */
    private final Status f11329e;

    public q(Status status, Account account) {
        this.f11329e = status;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status i() {
        return this.f11329e;
    }
}
