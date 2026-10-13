package com.google.android.gms.auth.api.signin;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public class d implements m {

    /* renamed from: e, reason: collision with root package name */
    private Status f4849e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    private GoogleSignInAccount f4850f;

    public d(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Status status) {
        this.f4850f = googleSignInAccount;
        this.f4849e = status;
    }

    @Nullable
    public GoogleSignInAccount a() {
        return this.f4850f;
    }

    @Override // com.google.android.gms.common.api.m
    @NonNull
    public Status i() {
        return this.f4849e;
    }
}
